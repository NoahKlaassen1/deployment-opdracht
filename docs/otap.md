# OTAP-schema en uitleg

OTAP staat voor: Ontwikkel - Test - Acceptatie - Productie.

## Ontwikkel
- Locatie: lokale machine van ontwikkelaar.
- Config: `APP_ENV=local`, `APP_DEBUG=true`, DB: SQLite (file `database/database.sqlite`).
- Doel: schrijven van features, lokale tests, debuggen.

## Test
- Locatie: CI/CD (GitHub Actions) of aparte test server.
- Config: zelfde als productie, maar met testdata; geautomatiseerde tests (PHPUnit, eventueel Dusk).
- Doel: automatische validatie dat code werkt (unit/integratie).

## Acceptatie
- Locatie: staging server.
- Config: zo veel mogelijk gelijk aan productie (zelfde services en configuratie).
- Doel: stakeholders testen features en bevestigen release.

## Productie
- Locatie: live server.
- Config: `APP_ENV=production`, `APP_DEBUG=false`, veilige DB (managed), TLS, monitoring en backups.
- Doel: gebruik door eindgebruikers.

## Visualisatie
Maak 4 blokken (O -> T -> A -> P) met pijlen. Geef per blok korte opsomming: DB-type, debug, wie gebruikt, welke tests.
