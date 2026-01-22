# Demonstratie aan docent - stappen

1. Toon de repository op GitHub en de branch `main`.
2. Laat de GitHub Actions build run zien:
   - Statische analyse (PHPStan)
   - PHP CS Fixer dry-run
   - PHPUnit test resultaten
3. Toon de Docker image (locaal met `docker images` of via GitHub Actions build logs).
4. Push naar `main` en laat Deploy workflow lopen — toon logs.
5. Toon de live app (productie URL) en voer:
   - GET /taken -> toont lijst
   - POST /taken -> maakt nieuwe taak
6. Bespreek OTAP diagram en `docs/dataverwerking.md` (AVG) en leg uit waarom SQLite gekozen is voor demo.
