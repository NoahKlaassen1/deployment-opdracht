# Dataverwerking (AVG) - Deployment App

**Welke data wordt verwerkt**
- `titel` van een taak (geen bijzondere persoonsgegevens).
- (Eventueel) gebruikersnaam en e-mail als je later gebruikers toevoegt.

**Doel van de verwerking**
- Opslaan en tonen van taken voor de applicatie (educatief / demonstratie).

**Rechtsgrond**
- Voor deze oefening: toestemming en/of gerechtvaardigd belang (functioneel voor de app).

**Waar en hoe opgeslagen**
- SQLite bestand: `database/database.sqlite`.
- Toegang alleen via serveraccount en applicatie (geen publieke direct toegang).

**Beveiligingsmaatregelen**
- Geen gevoelige persoonsgegevens opgeslagen.
- Productie: TLS (HTTPS) verplicht.
- Wachtwoorden gehasht (bcrypt) als gebruikers toegevoegd worden.
- Backups server-side en beveiligd via server policies.

**Bewaartermijn**
- Voor test/demo: bewaar tot project einde.
- In praktijk: geef bewaartermijn aan (bijv. 6 maanden na inactiviteit).

**Rechten van betrokkenen**
- Inzage, correctie, verwijdering: e-mail verzoek naar beheerder (documenteer contact).
