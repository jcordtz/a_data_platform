![microsoft](../images/microsoft.png)

# En data platform - Projekt roller

[![en](https://img.shields.io/badge/lang-en-blue.svg)](project-roles.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](project-roles-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](project-roles-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Roller

Dataplatformen ligger op til at bruge roller som en mekanisme til at kontrollere adgangen til data og datasæt i platformen. Disse roller bruges til at give de rigtige ansvarsområder til personer, der arbejder med platformen.

Hvordan rollerne er forbundet med de enkelte personer og on nogle af disse har mere end én rolle, er op til den enkelte virksomhed/institution samt det givne behov og tilgængelige ressourcer.

Det vigtigste er, at processerne ved håndtering af data overholder "reglerne" i paradigmet.

Dette er en liste over mulige roller, baseret på hvad virksomheder/institutioner, der har bygget en dataplatform som beskrevet, har benyttet:

1. Projekt ejer
   - Interface til styregruppe/ledelse.
   - Kommer typisk fra "Forretningen"

2. Projekt leder
   - Leder af det enkelte projekt.
   - Kommer typisk fra “IT”

3. Data Engineer
   - Definerer og danner de processer der henter data fra kildesystemerne og til ingest området.
   - Kommer typisk fra “IT”

4. Designer
   - Definere og danner de datasæts som skal dannes for at understøtte forretningens behov
   - Kommer typisk fra “Forretningen”

5. Transform engineer (ETL-programmør)
   - Danner de transformations-processer (ETL) der anvendes i **transform** og **publish** områderne.
   - Kommer typisk fra “IT”

6. Data Governance
   - Sikre en ens forståelse mellem IT og forretningen i forhold til sikkerhed.
     Samt at disse passer til de overordnede sikkerheds principper virksomheden/institutionen følger.
   - Kommer typisk fra “IT/Forretningen”

7. Super-bruger/Ambassadør
   - Definere og danner rapporter/dashboard og andre slut-brugs scenarier
   - Kommer typisk fra “Forretningen”

8. System ejer
   - Bibringer viden om hvorledes kildesystemerne anvendes/er organiseret
   - Kommer typisk fra “Forretningen”

9. Arkitekt
   - Sikrer at principper omkring IT-arkitektur følges
   - Kommer typisk fra “IT”

Afhængigt af projektets størrelse, virksomhedens/institutionens størrelse og/eller et eventuelt anvendt framework kan man også møde roller som Scrum Master, Product Owner, Program Owner, Styregruppe medlem m.fl.

Behovene i de forskellige roller vil naturligvis variere gennem et projekt. Følgende er et eksempel på, hvordan "arbejdsbyrden" kunne se ud:

|Rolle|Ideation|Iteration 1|Iteration 2|Iteration 3|Iteration 4|Iteration ….|Vision state|
|----|--------|-----------|-----------|-----------|-----------|------------|------------|
|Projekt ejer|100 %|25%|25%|25%|25%|25%|100%|
|Projekt leder|100%|100%|100%|100%|100%|100%|100%|
|Data Engineer|100%|50%|25%|5%|5%|5%|0%|
|Designer|100%|10%|10%|25%|25%|40%|0%|
|Transform Engineer|100%|30%|30%|30%|30%|30%|0%|
|Data Governance|100%|25%|25%|10%|10%|10%|10%|
|Super-bruger/Ambassadør|100%|5%|5%|20%|20%|50%|100%|
|System ejer|100%|25%|10%|0%|0%|0%|10%|
|Arkitekt|100%|50%|25%|10%|10%|10%|10%|

1. Ideation – Projekt start der sætter rammerne og ønsket resultat for et projekt.
2. Iteration X – de individuelle “versioner” – typisk ny version hver 3 måned 
3. Vision State – Det ønskede endelige resultat.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](project-roles.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](project-roles-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](project-roles-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
