![microsoft](../images/microsoft.png)

# En data platform - Navngivnings-standarder

[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

I den travleevigt voksende verden af data, hvor enorme mængder information lagres og administreres, spiller navngivningsstandarder en afgørende rolle. Forestil dig et storslået bibliotek, hvor hver bog er omhyggeligt katalogiseret og sat på hylder. Uden et klart system ville det være en skræmmende opgave at finde en bestemt bog. På samme måde sikrer navngivningsstandarder i dataplatformen, at data er organiserede, tilgængelige og forståelige.

## Vigtigheden af navngivningsstandarder

Navngivningsstandarder i dataplatformen er som Deweys decimalsystem i et bibliotek. De giver en ensartet og logisk ramme, der hjælper alle i organisationen med at forstå datastrukturen. Denne konsistens reducerer forvirring og fejl, hvilket gør det nemmere for teams at samarbejde og dele information.

Klare og beskrivende navne er afgørende. De fungerer som vejvisere, der guider brugerne til de data, de har brug for. Når navne er intuitive og nemme at forstå, kan nye teammedlemmer hurtigt komme i gang, og erfarne analytikere kan arbejde mere effektivt. Denne klarhed er især vigtig i store organisationer, hvor data bruges af forskellige afdelinger og teams.

Effektivitet er en anden vigtig fordel ved navngivningsstandarder. Når dataobjekter navngives konsekvent, strømliner det datahentning og analyse. Analytikere kan hurtigt finde de data, de har brug for, hvilket reducerer den tid, der bruges på at søge, og øger produktiviteten. I et tempofyldt forretningsmiljø kan denne effektivitet give en betydelig konkurrencefordel.

## Bedste praksis for navngivning af standarder

For at opnå disse fordele er det vigtigt at følge bedste praksis for navngivningsstandarder. Beskrivende navne er et must. De skal tydeligt beskrive dataobjektets indhold og formål. Undgå vage eller alt for tekniske termer, der kan forvirre brugerne. I stedet for at navngive en tabel "cust_ord" skal du f.eks. bruge "customer_orders". Dette navn fortæller straks brugerne, hvad tabellen indeholder.

Forkortelser og akronymer bør minimeres. Selvom de kan gemme et par tastetryk, kan de være forvirrende, især for nye brugere. Konsistens er også afgørende. Hold dig til et standardformat for tabelnavne, kolonnenavne og andre dataelementer. Denne ensartethed hjælper brugerne med hurtigt at forstå strukturen og formålet med dataene.

Navne skal være begyndervenlige. De skal være lette at forstå for alle brugere, ikke kun erfarne analytikere. Denne inklusivitet sikrer, at alle i organisationen kan arbejde effektivt med dataene.

## Eksempler på navngivningsstandarder

Lad os se på nogle eksempler for at illustrere disse principper. Til tabeller skal du bruge klare og beskrivende navne som 'customer_orders', 'product_inventory' eller 'sales_transactions'. Disse navne er lette at forstå og formidler straks indholdet af tabellen.

For kolonner skal du navngive dem på en måde, der tydeligt angiver deres indhold. Brug f.eks. "order_date", "customer_id" eller "product_name". Disse navne giver en klar indikation af, hvad hver kolonne indeholder, hvilket gør det nemmere for brugerne at arbejde med dataene.

Præfikser og suffikser kan også være nyttige. De kan angive typen af data eller deres status. Du kan f.eks. bruge "temp_" til midlertidige tabeller eller "_arch" til arkiverede data. Disse præfikser og suffikser giver yderligere kontekst, der hjælper brugerne med at forstå formålet med og status for dataene.

## Navngivningsstandarder i cloud-miljøer

Fordi dataplatformen i sin natur er cloud-født, vil vi også kort komme ind på navnestandarder her. En mere omfattende *guide* kan findes
i [Microsoft Cloud Adoption Framework](<https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging>). Bemærk venligst, at det er afgørende , at din navngivningsstandard passer til din organisation og ikke et hvilket som helst "generelt" dokument.

Så i cloud-miljøer er navngivningsstandarder lige så vigtige. De hjælper med at sikre, at cloud-ressourcer er let identificerbare og administrerbare. Medtag en forkortelse, der repræsenterer typen af cloudressource, f.eks. "vm" for virtuelle maskiner eller "rg" for ressourcegrupper. Angiv stadiet i udviklingslivscyklussen, f.eks. »prod« for produktion, »dev« for udvikling eller »qa« for kvalitetssikring.

Angiv det område, hvor ressourcen er installeret, f.eks. 'westus', 'eastus2' eller 'westeu'. Medtag navnet på det projekt eller den arbejdsbelastning, som ressourcen er en del af, f.eks. "sharepoint", "hadoop" eller "navigator". Brug et nummereringssystem til at skelne mellem forekomster af den samme ressource, f.eks. '01', '001' eller 'a'.

### Eksempler i cloud-miljøer

Her er nogle eksempler på navngivningsstandarder i cloudmiljøer:

- **Virtuel maskine**: 'vm-prod-westus-sharepoint-01'
- **Ressourcegruppe**: 'rg-dev-eastus2-hadoop'
- **Lagerkonto**: 'stg-qa-westeu-navigator-001'

Disse standarder hjælper med at sikre, at cloudressourcer er let identificerbare og administrerbare, hvilket understøtter effektiv drift og styring.

Afslutningsvis er navngivningsstandarder i dataplatformen såvel som i cloud-miljøerne afgørende for at opretholde konsistens, klarhed og effektivitet. Ved at følge bedste praksis og bruge beskrivende, ensartede navne kan organisationer sikre, at deres data er organiserede, tilgængelige og nemme at forstå. Dette understøtter igen effektiv datastyring og analyse, hvilket giver et solidt grundlag for informeret beslutningstagning og forretningssucces.

[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)