# Dockerfile voor Laravel app (PHP-FPM)
FROM php:8.2-fpm

# Zorg voor niet-interactieve apt (voorkomt prompts)
ENV DEBIAN_FRONTEND=noninteractive

# System build deps en libsqlite headers voor pdo_sqlite
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    pkg-config \
    libsqlite3-dev \
    git \
    unzip \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    zlib1g-dev \
    && docker-php-ext-configure zip \
    && docker-php-ext-install -j$(nproc) pdo pdo_sqlite mbstring zip exif pcntl \
    && apt-get purge -y --auto-remove build-essential pkg-config libzip-dev zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy composer binary from composer image (snelle manier)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Kopieer composer files en installeer (prod/non-dev)
COPY composer.json composer.lock ./
RUN composer install --no-dev --no-scripts --prefer-dist --no-progress --no-interaction || true

# Kopieer projectbestanden
COPY . .

# Zorg voor permissions (kan per host verschillen)
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache || true

EXPOSE 9000

CMD ["php-fpm"]
