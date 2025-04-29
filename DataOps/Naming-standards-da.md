![microsoft](../images/microsoft.png)

# En data platform - Navngivnings-standarder

[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

Sure! Here’s the enhanced article translated to Danish:

## Vigtigheden af Navngivningsstandarder

1. **Konsistens**: Konsistente navngivningskonventioner hjælper med at sikre, at alle i organisationen forstår datastrukturen, hvilket reducerer forvirring og fejl.
2. **Klarhed**: Klare og beskrivende navne gør det lettere for brugere at forstå formålet og indholdet af dataobjekter, hvilket er særligt vigtigt for nye teammedlemmer.
3. **Effektivitet**: Veldefinerede navngivningsstandarder strømliner datahentning og analyse, hvilket gør det lettere for analytikere at finde og bruge de data, de har brug for.

### Bedste Praksis for Navngivningsstandarder

1. **Beskrivende Navne**: Brug navne, der tydeligt beskriver indholdet og formålet med dataobjektet. Undgå vage eller alt for tekniske termer.
2. **Undgå Forkortelser**: Minimer brugen af forkortelser og akronymer, da de kan være forvirrende, især for nye brugere.
3. **Konsistens**: Hold dig til en konsistent navngivningskonvention på tværs af alle dataobjekter. Dette inkluderer brug af en standardformat for tabelnavne, kolonnenavne og andre dataelementer.
4. **Begynder-Venlig**: Sørg for, at navne er lette at forstå for alle brugere, ikke kun erfarne analytikere.

### Eksempler

- **Tabeller**: Brug klare og beskrivende navne som `customer_orders`, `product_inventory` eller `sales_transactions` i stedet for vage navne som `cust_ord`, `prod_inv` eller `sales_txn`.
- **Kolonner**: Navngiv kolonner på en måde, der tydeligt angiver deres indhold, såsom `order_date`, `customer_id` eller `product_name`.
- **Præfikser og Suffikser**: Brug præfikser eller suffikser til at angive typen af data eller dens status, såsom `temp_` for midlertidige tabeller eller `_arch` for arkiverede data.

## Navngivningsstandarder for Cloud Miljøer

1. **Ressourcetype**: Inkluder en forkortelse, der repræsenterer typen af cloud-ressource, såsom `vm` for virtuelle maskiner eller `rg` for ressourcegrupper.
2. **Miljø**: Angiv stadiet af udviklingslivscyklussen, såsom `prod` for produktion, `dev` for udvikling eller `qa` for kvalitetssikring.
3. **Region**: Angiv regionen, hvor ressourcen er deployeret, som `westus`, `eastus2` eller `westeu`.
4. **Projekt eller Arbejdsbyrde**: Inkluder navnet på projektet eller arbejdsbyrden, som ressourcen er en del af, såsom `sharepoint`, `hadoop` eller `navigator`.
5. **Instans**: Brug et nummereringssystem til at differentiere instanser af den samme ressource, såsom `01`, `001` eller `a`.

### Eksempler i Cloud Miljøer

- **Virtuel Maskine**: `vm-prod-westus-sharepoint-01`
- **Ressourcegruppe**: `rg-dev-eastus2-hadoop`
- **Lagerkonto**: `stg-qa-westeu-navigator-001`

Disse standarder hjælper med at sikre, at cloud-ressourcer er lette at identificere og administrere, hvilket understøtter effektiv drift og styring.

[![en](https://img.shields.io/badge/lang-en-red.svg)](Naming-Standards.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Naming-Standards-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Naming-Standards-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)