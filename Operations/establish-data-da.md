![microsoft](images/microsoft.png)

# En data platform - etablering af data

[![en](https://img.shields.io/badge/lang-en-blue.svg)](establish-data.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](establish-data-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](establish-data-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Etablering af data

Vejledende principper

1. Lovgivning som den europæiske GDPR eller CCPA fra Californien skal overholdes.
2. Data kan kun bruges i den sammenhæng, de indsamles i.
3. Udvikling kan ikke ske på produktionsdata.
4. Skelne mellem lagring af data - "sikkerhed" - og brugen af data - "privatliv".

De vigtigste tekniske mekanismer, man kan bruge til at sikre korrekt håndtering i miljøerne, er følgende:

1. Dataklassificering - gør det muligt at forstå arten af de data, man har med at gøre.
2. Miljøadskillelse - ved at adskille miljøerne kan blanding af data undgås. Dette muliggør en enklere styringsproces.
3. Datapolitikker - brug af politikker sikrer, at generelle rammeværk som ISO27XXX, NIST eller lignende følges i alle miljøer.
4. Mærkning – hjælper med at identificere vigtige elementer i hvert miljø, f.eks. ejer og miljøtype.
5. Kryptering - brugen af kryptering, måske ved hjælp af egne nøgler, kan være en metode sikkerhedsmæssigt.

Proces til oprettelse af datasæt, der ikke er til produktion

Processen med at oprette data, der kan bruges i ikke-produktionsmiljøer, kan være en (eller flere) af følgende:
1. Kopi af produktionsdata.
2. Datagenerering af falske data.
3. Anonymisering.
4. Pseudonymisering.
5. Kryptering + ordbog.
6. Datasæt af typen "Ingen relationer".

Den eller de metoder, der anvendes, vil normalt afhænge af klassificeringen af de forskellige dataelementer. Med henblik på at fastlægge klassificeringen af forskellige data/datasæt bør der føres en "database" med disse oplysninger. Dette skal derefter være "opslagsstedet" for at etablere den rigtige databehandling.

### Databehandling i detaljer

I dette afsnit diskuterer vi de forskellige muligheder, der kan bruges til at etablere et eller flere datasæt i et ikke-produktionsmiljø. Man vil højst sandsynligt skulle bruge en kombination af disse.
Vigtigt for EU-reglement: pseudonymisering og anonymisering af data behandles forskelligt i henhold til GDPR, EU's databeskyttelseslov.
Henvisning til EU-dokument

#### Kopi af produktionsdata

Selvom dette ikke er en anbefalet fremgangsmåde, er det nogle gange muligt og tilladt at bruge (eventuel en delmængde af) produktionsdata i et ikke-produktionsmiljø. Disse datasæt vil sandsynligvis blive markeret som skrivebeskyttede.
En Azure-tjeneste, der er egnet til denne opgave, kan være Data Factory-Copy Pipelines.

#### Datagenerering af falske data

I denne proces opretter man falske data baseret på oplysningerne om datatype, længde, mønster, indhold osv., disse data skal overholde. Det er vigtigt, at dette er ægte falske data og ikke data, der er et forfalsket produktionsdatasæt.
Oprettelse af et falsk datasæt er oftest en vanskelig opgave, så det er værd at sørge for, at processen, der etableres, kan genanvendes, automatiseres, skaleres og er parameterstyret.

Værktøjer til at oprette falske data ved brug af Python kan være
- Faker
- SDV
- Gretel

#### Anonymisering

Anonymisering kan bruges, når man kan kryptere et produktionsdatasæt og overføre det til et ikke-produktionsmiljø. Anonyme data er data, der er blevet ændret, så genidentifikation af data ikke er mulig.
Krypteringen kan udføres på mange måder ved hjælp af forskellige teknikker som støj i data, substitution og aggregering.

Det er vigtigt at bemærke, at anonymisering er en "envejsproces", hvor man vil - og skal - miste evnen til at spore tilbage til de oprindelige data. Man må heller ikke kunne bruge disse data til at oprette forbindelse til og bruge data fra andre produktionsdatasæt.

Data Factory-dataflows/Azure Databricks kan bruges til dette med udvidelsen af Microsoft Presidio.

#### Pseudonymisering

Pseudonymisering er i det væsentlige den samme proces som anonymisering, med en stor forskel. Pseudonyme data er data, der er blevet afidentificeret fra dataenes oprindelse, men som kan identificeres igen, hvis det er nødvendigt.
Tokeniserings- og hashfunktioner kan bruges til at pseudonymisere data.

Data Factory-dataflows/Azure Databricks kan bruges til dette.

#### Kryptering med nøgle

I dette tilfælde beskytter man ens data med en krypteringsnøgle, og kun personerne der har adgang til nøglen kan anvende data.

Denne nøgle kan opbevares i en Azure Key Vault.

>[!Note]
>Dette er ikke en gyldig GDPR "beskyttelsesmekanisme", fordi den "kun" beskytter adgangen til dataene, ikke brugen af dataene.

#### Datasæt af typen "Ingen relationer"

I denne tilgang opretter man datasæt, der indeholder "rigtige" data på kolonneniveau. 

For eksempel hvis man har en postnummerkolonne, ville postnumrene her være ægte, og hvis man i samme post har et gadenavn, ville det også være ægte gadenavne.

Tilgangen "ingen relationer" kommer i spil, når data ses fra ud fra den enkelte række. I ovenstående tilfælde ville gadenavn, husnummer og postnummer logisk set give mening, men det vil ikke eksistere ”i virkeligheden”.
Så en tilgang kunne være at opbygge sæt af forskellige data, der repræsenterer elementer, der er personrelateret - kunne være en database med gadenavne i et sæt, alle postnumre i et andet sæt, de 20 mest almindelige fornavne i et tredje, de 20 mest anvendte efternavne i et fjerde og så videre.

Og når man opretter en ny række, tages tilfældige værdier fra de enkelte sæt og bruges til at oprette disse elementer i forbindelse med en "person".

Data Factory-dataflows/Azure Databricks kan bruges til dette.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](establish-data.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](establish-data-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](establish-data-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)