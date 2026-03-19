![microsoft](../images/microsoft.png)

# En data platform - Load og performance

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)


## Indlæsning af data til dataplatformen baseret på Medallion-arkitekturen

### Introduktion

Medallion-arkitekturen, som den er beskrevet, er blevet en de facto standard for moderne dataplatforme og
Data warehouse-design – især i cloud-baserede miljøer. Arkitekturen leverer en struktureret, skalerbar og
En performance-optimeret tilgang til at indtage, forfine og eksponere data fra kildesystemerne til analytiske forbrugere.

Dette afsnit forklarer, hvordan data skal indlæses fra en kilde til et analytisk arbejdsområde baseret på Medallion
arkitektur, med særligt fokus på:

1. Design af datapipeline
2. Ydelsesoptimering
3. Cloud-native principper
4. Robusthed, skalerbarhed og omkostningskontrol

Denne sektion er baseret på moderne cloud-platforme som Azure, AWS eller GCP, men principperne er generiske og platform-agnostiske.

## Overordnede arkitekturprincipper

For at opsummere, hvad der kan læres fra *hoveddokumentet* , opdeler Medallion-arkitekturen datalivscyklussen i klart adskilte lag:

|Lag|Formål|
|-----|---------------|
|Bronze|Rådata fra kildesystemerne – uændrede og komplet|
|Silver|Rensede, standardiserede og berigede data|
|Guld|Forretningsklare, aggregerede og præstationsoptimerede data|

Denne lagdelte tilgang understøtter:

1. Separation af bekymringer
2. Sporbarhed og styring
3. Optimal ydeevne i hvert behandlingstrin
4. Sky-skalerbarhed

## Overordnet belastningsprincip

Det overordnede koncept for at indlæse data har længe været og bør altid være: bland ikke bevægelser af store mængder
af forfiningsprocessen for hvert element i disse data.

Selvom det ofte glemmes, er det stadig MEGET god praksis – og at overse dette ofte er smerten ved præstationsproblemer.

Den "historie", jeg mest bruger, når jeg forklarer dette, handler om at flytte fra et hus til et andet.

Den første opgave er at få alle kasserne fra det gamle sted til det nye sted – uden at kigge i hver enkelt kasse. Det er ofte
lavet af flyttefolk, og jeg vil ikke have, at de kigger i hver kasse.

Når kassen så er på det nye sted, vil du kigge på kassen – ikke i kassen – for at se, hvilket rum denne kasse skal hen.
Og det ville sandsynligvis også blive gjort af flyttefolk/venner, så der er stadig ingen grund til, at de skal kigge i kassen.

Og så, når kassen er i det rigtige rum, åbner du den (personligt) og begynder at finde ud af, hvad du skal gøre med indholdet.

## En note om filformater

Som du vil lære i resten af dette afsnit, arkiver, placeringer og overordnede rolle. Og da der findes mange forskellige filformater
Lad os se på, hvad der normalt ses og derfor bruges i dataplatformen.

### JSON (JavaScript Object Notation)

**Typiske anvendelsestilfælde**: API-payloads, konfigurationsfiler, semistruktureret dataudveksling mellem applikationer, hændelses- og streamingdata (telemetri, logs) 
**Nøglekarakteristika**: Tekstbaseret og menneskeligt læsbar, skema-løs eller løst håndhævet, hierarkisk og indlejret struktur, bredt understøttet på tværs af programmeringssprog.  
**Styrker**: Fremragende til dataudveksling og API'er, fleksibel datastruktur, nem at læse og fejlfinde.  
**Begrænsninger**: Dårlig komprimering, ikke kolonneformede, ineffektiv til storskala analyse  

### Avro

**Typiske anvendelsestilfælde**: Dataserialisering i distribuerede systemer, streamingplatforme (Kafka, Event Hubs), datapipelines og system-til-system integration  
**Nøglekarakteristika**: Binært format (ikke menneskelæseligt), stærkt eksplicit skema, skema lagret med/sammen med dataene, rækkeorienteret  
**Styrker**: Kompakt og hurtig serialisering, understøtter skemaudvikling, er velegnet til streaming af arbejdsbelastninger  
**Begrænsninger**: Ikke optimeret til analyse, kræver værktøj til inspektion, mindre intuitivt til manuel inspektion  

### ORC (Optimeret rækkekolonne)

**Typiske anvendelsestilfælde**: Storskala analyse, datalager, OLAP-arbejdsbelastninger i big data-platforme  
**Nøglekarakteristika**: Kolonnelagringsformat, høj komprimering, kolonneniveau statistik og indeksering, stærk skemaunderstøttelse  
**Styrker**: Høj forespørgselsydelse, effektiv udnyttelse af lagring, effektiv til aggregeringer og filtrering.  
**Begrænsninger**: Mindre fleksibel end Parquet, tæt koblet med big data-motorer, ikke designet til hyppige opdateringer  

### XML (eXtensible Markup Language)

**Typiske anvendelsestilfælde**: Integration af virksomhedssystemer, dokumentcentrerede data, industristandarder (som finans, sundhedssektor, offentlig sektor)  
**Nøglekarakteristika**: Tekstbaseret og ordrig, Tag-orienteret hierarkisk struktur, stærk skemavalidering via XSD  
**Styrker**: Moden økosystem, stærke valideringsmuligheder, Egnet til dokument-lignende data  
**Begrænsninger**: Store filstørrelser, dyr parsing, ikke egnet til analytics  

### CSV (komma-separerede værdier)

**Typiske anvendelsestilfælde**: Simpel udveksling af tabeldata, import/eksport, regnearksinteroperabilitet  
**Nøglekarakteristika**: Almindelig tekst, rækkebaseret, Ingen indbygget skema eller metadata, Én post pr. linje  
**Styrker**: Universelt understøttet, let at generere og forbruge, menneskeligt læsbart  
**Begrænsninger**: Ingen håndhævelse af datatyper, ingen komprimering eller indeksering, følsom over for afgrænsere og kodningsproblemer  

### TXT (Almindelig tekst)

**Typiske anvendelsestilfælde**: Logs, fri form eller rå tekst, midlertidig eller mellemliggende lagring  
**Nøglekarakteristika**: Ustruktureret eller minimalt struktureret, Ingen skema eller metadata, Vilkårligt layout  
**Styrker**: Maksimal fleksibilitet, Nemt at generere, Ingen specialværktøj kræves 
**Begrænsninger**: Kræver specialdefineret parsing, ikke analytisk venlig, ingen struktur eller styring  

### Parquet

**Typiske anvendelsestilfælde**: Data lakes, analytiske arbejdsbelastninger, BI, rapportering, maskinlæring  
**Nøglekarakteristika**: Kolonneformede, binærformat, Schema-aware, designet til distribueret behandling  
**Styrker**: Fremragende ydeevne for analyse, høj komprimering, kolonnebeskæring og prædikat-pushdown, bred økosystem-understøttelse  
**Begrænsninger**: Ikke menneskelæselig, ikke egnet til opdateringer på rækkeniveau, kræver analytiske motorer  

### XLS / XLSX (Excel)

**Typiske anvendelsestilfælde**: Forretningsrapportering, ad hoc dataanalyse, små til mellemstore datasæt, datadeling med forretningsbrugere  
**Nøgleegenskaber**: Binær (XLS) eller XML-baseret container (XLSX), understøtter formler, diagrammer, formatering, Stærkt interaktiv  
**Styrker**: Meget brugervenlig, rig funktionalitet, bredt anvendt  
**Begrænsninger**: Ikke skalerbar, dårlig ydeevne ved store volumener, ikke egnet som registreringssystem  

### Delta-søen

**Typiske anvendelsestilfælde**: Styrede datasøer, Medallion-arkitekturer (bronze/sølv/guld), inkrementell og streaming databehandling  
**Nøglekarakteristika**: Bygget oven på Parquet, transaktionslog ('_delta_log'), ACID-transaktioner på datalakes, skemahåndhævelse og -udvikling, tidsrejser og versionsstyring  
**Styrker**: Kombinerer søer og databaser, understøtter opdateringer, sletninger og sammenfletninger, ideelt til moderne analyseplatforme  
**Begrænsninger**: Kræver kompatible motorer, let overhead sammenlignet med rå Parquet  

**En oversigtstabel**

| Format | Struktur | Menneskeligt læsbart | Analyseklar | Skema | Typisk brug |
|------------|-----------|----------------|------------------|--------|-------------|
| JSON | Semi | Ja | Nej | Valgfrit | API'er, begivenheder |
| Avro | Række | Nej | Begrænset | Ja | Streaming |
| ORC | Klumme | Nej | Ja | Ja | Datalager |
| XML | Semi | Ja | Nej | Ja | Enterprise-integration |
| CSV | Tabular | Ja | Begrænset | Nej | Dataudveksling |
| TXT | Ingen | Ja | Nej | Nej | Logs, tekst |
| Parquet | Klumme | Nej | Ja | Ja | Datasøer |
| XLS/XLSX | Tabular | Ja | Nej | Ja | Forretningsanalyse |
| Delta Lake | Klumme | Nej | Ja (Avanceret) | Ja | Styrede datalakes |

Set fra en dataplatform er dette de foreslåede formater i de forskellige lag:

|Lag|Type af data|Foreslået format|
|-----|------------|----------------|
|Bronze|Rå data lander|Parquet/CSV|
|Bronze|Streaming input|JSON/Avro|
|Silver|Kuraterede data|Delta Lake|
|Guld|Analyse & ML|Delta Lake|
|Arkiv|Langtidsopbevaring|Parquet|

## Trin 1: Dataindlæsning ind i bronzelaget

Bronzelaget fungerer som registreringssystem for alle indsamlede data. Data bør gemmes så tæt som muligt
til kilden så meget som muligt, både semantisk og strukturelt.

### Designprincipper for bronzelaget

1. **Ingen/minimal transformation**
I bronze-laget bør data gemmes i deres rå format og undgå datatype-mapping, forretningsregler og joins.
Det betyder, at du bevarer kildekolonner, feltnavne og formater samt beholder indholdet "som det er".

Dette sikrer reproducerbarhed, nemmere fejlfinding og mulighed for at genbehandle data om nødvendigt.

 Den *minimale transformation* adresserer det faktum, at du sandsynligvis vil gemme indholdet i en fil af en eller anden type (se #3).
Det siger blot, at en tabel, der er gemt i en database, ikke vil blive flyttet ind i *endnu en* database.

2. **Inkrementel indtagelse**
For at opnå den bedste ydeevne og skalerbarhed bør data – hvis muligt – indsamles inkrementellt ved hjælp af mekanismer som
ændre dataindfangning (CDC), vandmærker (f.eks. tidsstempler, identitetskolonner) eller begivenhedsstrømme (f.eks. Kafka, Event Hubs).

Så du bør prøve at undgå fulde genindlæsninger, medmindre datavolumerne er meget små.

>[! Note]
>Mest sandsynligt vil den første belastning være en fuld belastning.

3. **Skylagring som landingszone**
Bronze-laget bør befinde sig i billig, elastisk objektlagring, som Azure Data Lake Gen2,
Amazon S3 eller Google Cloud Storage i anbefalede filformater.

### Overvejelser om ydeevneoptimeringer i Bronze-laget

For at opnå så høj belastningshastighed som muligt er følgende værd at overveje:

* Parallel indlæsning (opdelt efter f.eks. tabel, dato eller forretningsnøgle)
* Store filstørrelser (typisk 100–1000 MB pr. fil)
* Kompression (snappy, Gzip)
* Partitionering efter indlæsningstid eller forretningsattribut
* Undgå sortering og om muligt "where-klausulen" ved kilden
* Brug enhver tilgængelig PaaS-tjeneste i skyen, der er oprettet for optimalt at indlæse data som Azure Data Factory.
* Hvis muligt, brug streaming-teknologier

Bronze-laget bør skaleres horisontalt og er ikke beregnet til komplekse forespørgsler.

## Trin 2: Forvandling til Sølvlaget

Sølvlaget repræsenterer rensede, konsistente og teknisk korrekte data.

På dette stadie skifter fokus fra kildesystemstrukturen til en fælles og standardiseret tilgang.
Fokus er at have data, der nemt kan kombineres mod *slutresultatet* i Gold-laget.

Dette lag indeholder ikke strukturer, der **er** forbundet, men strukturer, der **let** kan sammenføjes .

For at opnå dette er typiske transformationer funktioner som:

* Datatype-normalisering
* Deduplikation
* Nullhåndtering
* Validering af referenceintegritet
* Tidszonenormalisering
* Harmonisering af  kode- og referencedata
* Tilpasset a/de [Navngivningsstandarder](.. /DataModellering/NavngivningStandard.md)

Det er vigtigt, at alle transformationer er deterministiske, versionskontrollerede og idempotente

### Performance Design i sølvlaget

I Siler-laget vil du sandsynligvis bruge Python og/eller SQL, derfor bør det format, vi bruger, understøtte dette
på den bedst mulige måde.

1. **Kolonnelagringsformater**
Sølvdata bør opbevares i kolonneformater som Parquet, Delta Lake, Iceberg og Hudi.
Dette muliggør prædikat-pushdown, selektive kolonnelæsninger og effektiv komprimering.

2. **Partitionering og klyngedannelse**
For at opnå den bedste ydeevne ved adressering af data i Silver-laget til behandling mod
Guldlag, en korrekt opdeling, er vigtig at overveje. Nøglen til denne opdeling kan være genstande
som dato (f.eks. event_date), kunde/lejer eller region.  
Valgfrit forbedret med Z-ordning eller klyngeteknikker.

Bemærk venligst, at overpartitionering kan forringe ydeevnen betydeligt.

3. **ELT i stedet for ETL**
Brug cloud warehouse- eller lakehouse-compute-motorer til transformationer. Og når man vælger, hvilke tjenester man skal bruge, er det
Det er værd at vælge tjenester, der adskiller regnekraft fra lagring.

Denne tilgang med at bringe compute til dataene og ikke "skjule" dataene i en teknologi på en compute sikrer
Evne til at skalere efter behov og minimerer unødvendig dataflytning. Det øger også markant din evne til at
Vælg den eller de rigtige tjenester til det pågældende job.

Hvis du kender til et Linux-miljø, er det tanken bag pipe-symbolet ("|").

Hvis du på Linux for eksempel gerne vil tage visse rækker og kolonner ud af en stor fil og derefter sortere disse data og ændre noget formatering, så det ender i en formateret rapport, kan dette se sådan ud:

**kat-fil | grep "A pattern" | Klip -d, -f1,3,5 | sort -u | sed -e "s/DEMO/Demo" | awk**

Så i dette tilfælde *printer* du filen til skærmen (cat), og dette sendes så til *greb*- kommandoen, der kun returnerer linjen med patteren *A-mønster*. Derefter returnerer output-brugeren til *cut*- kommandoen, der - ved at bruge , som separator - kun returnerer kolonnen i position 1, 3 og 5. Derefter sorteres outputtet uniqly (-u), og før formateringen med awk ændres ordet *DEMO* til *Demo* ved hjælp af streaming-editoren *sed*.

Her bringer du forskellige tjenester (Linux-kommandoer, altså) til dataene. Og i dette tilfælde kan hver kommando kun gøre **én** ting. Den kan have muligheder som cut-kommandoen, hvor du kan bruge -d<something> til at vise, at dine data er adskilt, men *cut*-kommandoen kan stadig kun lave et "cut".

Eksempler på tjenester, der bruger denne tilgang (som har mere funktionalitet end *cut*- kommandoen :smile:) er:

* DataBricks - tilgængelig i Azure, AWS og GSP.
* Microsoft Fabric
* AWS Redshift
* Google BigQuery
* Snefnug

## Trin 3: Modellering i guldlaget

Gold-laget er det forbrugerrettede lag, hvor data optimeres til brug med Business Intelligence (BI), rapportering, maskinlæring, AI, GenAI, AgenticAI og API-baseret adgang.

Her finder du datasæt, datamarts og endda datavarehuse.

På dette stadie er ydeevne, stabilitet og semantisk konsistens altafgørende. Derfor er konceptet om, at et datasæt *kun* har de rækker og kolonner, der er nødvendige for at opfylde den pågældende opgave, vigtigt – ikke kun fra et governance-perspektiv, men også fra et performance-perspektiv.

### Datamodelleringsmetoder

For at gøre Gold-laget brugervenlige kommer datamodeller i spil, og almindelige modelleringsmønstre inkluderer:

* Stjerneskemaer (fakta og dimensioner)
* Aggregerede tabeller
* Funktionslagre til maskinlæring
* Datasæt

For at gøre disse modeller lettere at bruge bør metadata defineres eksplicit, herunder
forretningsdefinitioner, KPI-logik, dokumentation og ejerskab

### Ydelsesoptimering i guldlaget

For at sikre så hurtig ydeevne som muligt er der nogle teknikker, der er værd at overveje.

* Forudberegnede aggregeringer
* Materialiserede synspunkter
* Selektiv denormalisering
* Caching (lagermotor eller BI-værktøjer)
* Separate compute pools pr. arbejdsbelastning

Gold-laget skal levere lav forespørgselsforsinkelse og skal derfor isoleres fra tunge input- og transformationsarbejdsbyrder.
Det betyder, at data i et af de ovenfor beskrevne modelleringsmønstre kun vil dække de nødvendige rækker og kolonner for at opfylde
opgaven, den er designet til.

## Cloud-native overvejelser

Begrundelsen og fordelene ved at bruge cloud som dataplatform har flere forskellige aspekter.

1. **Adkobler lagring og beregning**

Ideen om at bringe compute (=funktionalitet) til dataene og ikke omvendt er virkelig mulig med cloud-tjenester.

Cloud-platforme gør det muligt at skalere lagring og compute uafhængigt op (og ned) uden nedetid. Du kan
Pauser eller nedskaler også tjenester, når de er inaktive/ikke nødvendige, og det giver dig en mere fleksibel måde at optimere omkostninger på 
uden at gå på kompromis med præstationen.

2. **Infrastruktur som kode (IaC)**
Brug IaC til at implementere pipelines, lagring og compute konsekvent. Dette hjælper dig med at sikre miljøparitet på tværs af udvikling, test og produktion og dermed mulighed for automatisk at implementere ny funktionalitet til din analytiske platform.

3. **Sikkerhed og styring**

Fra et sikkerheds- og governance-synspunkt spiller identiteter en vigtig rolle. Ved at bruge Managed Identities og rollebaseret adgangskontrol (RBAC) med dine tjenester kan du oprette en opsætning, hvor det kun er en given service, der har adgang til dine data.

Kryptering i hvile og under transport er også en del af de fleste cloud-opsætninger, hvilket betyder, at dette automatisk er på plads, når en tjeneste implementeres og bruges.

Og for at sikre, at du kender turdataenes natur, kan du også lettere etablere dataklassificering, oprindelse og compliance-kontroller i en cloud.

4. **Observerbarhed og overvågning**

Sørg for at aktivere og udnytte build-loggingmekanismen for de forskellige tjenester, så du kan overvåge pipeline-metrikker og logning.

Implementere også nødvendige projekter vedrørende datakvalitet og muligheden for at validere enhver handling, der ikke er på plads for at øge denne kvalitet.

**Balancering af ydeevne og omkostninger**

I skyen er ydeevne og omkostninger tæt forbundet:

* Brug lavprislagring til bronzedata
* Forbrug kun beregning når det er nødvendigt i Silver-transformationer
* Optimer forespørgsler og modeller i Gold-laget
* Adskilte arbejdsbelastninger for indtastning og analyse
* "Skala når travlt – stop når du er i tomgang" bør være et ledende designprincip.

## Konklusion

Medallion-arkitekturen leverer en robust, skalerbar og ydelsesoptimeret tilgang til dataindlæsning og -behandling i en moderne dataplatform.  

* Holder bronzelaget råt og billigt
* Optimering af sølvlaget for effektive transformationer
* Design af guldlaget til forbrugernes ydeevne
… og ved fuldt ud at udnytte cloud-native kapaciteter kan organisationer etablere en dataplatform, der er fremtidssikret,
Omkostningseffektivt og nemt at styre og udvikle.

I den henseende giver denne arkitektur og tilgang dig støtte til både traditionel BI og avancerede analytiske arbejdsbyrder, hvilket gør det til et solidt fundament for datadrevne organisationer.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)