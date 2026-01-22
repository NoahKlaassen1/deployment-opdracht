#!/usr/bin/env bash
set -e

# Zorg dat sqlite file bestaat
if [ ! -f database/database.sqlite ]; then
  mkdir -p database
  touch database/database.sqlite
  chown www-data:www-data database/database.sqlite || true
fi

# Artisan key als niet gezet (in container)
if [ -z "$APP_KEY" ]; then
  php artisan key:generate --ansi
fi

# Run migrations in productie (force)
if [ "$APP_ENV" = "production" ]; then
  php artisan migrate --force || true
fi

# Cache config & routes & views in production
if [ "$APP_ENV" = "production" ]; then
  php artisan config:cache || true
  php artisan route:cache || true
  php artisan view:cache || true
fi

exec "$@"
