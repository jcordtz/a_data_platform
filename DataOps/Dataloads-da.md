![microsoft](../images/microsoft.png)

# En data platform - Load og performance

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Self-service.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Self-service-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Self-service-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)


Dataindlæsning til et Data Warehouse med en Medallion-arkitektur
Indledning
Medallion-arkitekturen (ofte kendt som Bronze–Silver–Gold) betragtes som en de facto-standard for moderne dataplatforme og data warehouse-arkitekturer – særligt i cloud-baserede miljøer. Arkitekturen muliggør en struktureret, skalerbar og performance-optimeret tilgang til indlæsning, forarbejdning og tilgængeliggørelse af data fra kildesystemer til analytiske anvendelser.
Denne artikel beskriver, hvordan data fra en kilde bør indlæses i et data warehouse ved anvendelse af en Medallion-arkitektur, med særligt fokus på:

Design af datapipelines
Performance-optimering
Cloud-native principper
Robusthed, skalerbarhed og omkostningskontrol
Artiklen tager udgangspunkt i moderne cloud-platforme (fx Azure, AWS eller GCP), men principperne er generiske og ikke platformsafhængige.


Overordnede arkitekturprincipper
Medallion-arkitekturen opdeler datalivscyklussen i klart adskilte lag:

Lag	Formål
Bronze	Rå data fra kildesystemer – uændrede og komplette
Silver	Rensede, standardiserede og berigede data
Gold	Forretningsklare, aggregerede og performance-optimerede data

Denne lagopdeling understøtter:

Adskillelse af ansvar (Separation of Concerns)
Sporbarhed og governance
Optimal performance i hvert behandlingslag
Cloud-skalerbarhed


Trin 1: Dataindlæsning i Bronze-laget
Formål
Bronze-laget fungerer som system of record for alle indlæste data. Data bør lagres så tæt på kilden som muligt, både semantisk og strukturelt.
Designprincipper
1. Minimal transformation

Lagring af data rå (raw)
Undgå konvertering af datatyper, forretningsregler og joins
Bevar originale kolonnenavne, feltstrukturer og formater
Dette sikrer:

Reproducerbarhed
Nem fejlsøgning
Mulighed for genindlæsning og genbehandling (reprocessing)
2. Inkrementel dataindlæsning
For at sikre performance og skalerbarhed bør data indlæses inkrementelt, fx ved brug af:

CDC (Change Data Capture)
Watermarks (tidsstempler eller identitetskolonner)
Event-baserede streams (fx Kafka, Event Hubs)
Fuld genindlæsning bør undgås, medmindre datamængderne er meget små.
3. Cloud storage som landing zone
Bronze-laget bør baseres på billigt og elastisk object storage:

Azure Data Lake Gen2
Amazon S3
Google Cloud Storage
Anbefalede filformater:

JSON / Avro (event-baserede kilder)
CSV (simple batch-kilder)
Parquet (hvis understøttet)


Performance-optimering i Bronze-laget

Parallel dataindlæsning (partitioneret efter tabel, dato eller forretningsnøgle)
Store filer (typisk 100–1000 MB pr. fil)
Komprimering (Snappy, Gzip)
Partitionering efter indlæsningstidspunkt eller forretningsattribut
Bronze-laget bør skalere horisontalt og er ikke optimeret til komplekse forespørgsler.


Trin 2: Transformation til Silver-laget
Formål
Silver-laget repræsenterer rensede, konsistente og teknisk korrekte data.
Her flyttes fokus fra kildesystemernes struktur til et fælles og standardiseret datamodel.


Typiske transformationer

Normalisering af datatyper
Fjernelse af dubletter
Håndtering af NULL-værdier
Validering af referentiel integritet
Harmonisering af tidszoner
Sammenkobling af kode- og referenceværdier
Alle transformationer bør være:

Deterministiske
Versionsstyrede
Idempotente


Performance-design i Silver-laget
1. Kolonneorienterede lagringsformater
Data i Silver-laget bør lagres i kolonneorienterede formater, fx:

Parquet
Delta Lake / Iceberg / Hudi
Dette muliggør:

Predicate pushdown
Selektiv læsning af kolonner
Effektiv datakomprimering
2. Partitionering og clustering
Korrekt partitionering er kritisk for performance:

Dato (fx event_date)
Kunde / tenant
Region
Kan eventuelt suppleres med:

Z-ordering eller clustering-teknikker
⚠ Over-partitionering kan have markant negativ effekt på performance.
3. ELT frem for ETL
Transformationer bør udføres i cloud warehouse- eller lakehouse-compute:

Compute udføres tæt på data
Skalering efter behov
Minimering af unødvendig dataflytning


Trin 3: Modellering i Gold-laget
Formål
Gold-laget er det forbrugsnære lag, optimeret til:

Business Intelligence (BI)
Rapportering
Machine Learning
API-baseret dataadgang
Her er performance, stabilitet og forretningsmæssig konsistens i fokus.


Datamodellering
Typiske modelleringsmønstre:

Stjerneskemaer (fakta- og dimensionstabeller)
Aggregationstabeller
Feature stores til machine learning
Metadata bør defineres eksplicit, herunder:

Forretningsdefinitioner
KPI-logik
Dokumentation og ejerskab


Performance-optimering i Gold-laget

Forudberegnede aggregationer
Materialiserede views
Selektiv denormalisering
Caching (i warehouse eller BI-værktøjer)
Separate compute-pools pr. workload
Gold-laget bør:

Levere lav svartid
Være isoleret fra tunge indlæsnings- og transformationsprocesser


Cloud-native overvejelser
1. Adskillelse af storage og compute
Cloud-platforme muliggør:

Uafhængig skalering af storage og compute
Pausering eller nedskalering af compute ved inaktivitet
Omkostningsoptimering uden at gå på kompromis med performance
2. Infrastructure as Code (IaC)

Konsistent deployment af pipelines, storage og compute via IaC
Ensartede miljøer på tværs af dev, test og prod
3. Sikkerhed og governance

Managed identities og IAM
Kryptering ved hvile og under transport
Row- og column-level security
Dataklassificering, lineage og compliance
4. Observability og monitoring

Pipeline-metrics og logging
Data quality-checks
SLA- og SLO-overvågning
Automatisk alerting


Balance mellem performance og omkostninger
I cloud er performance og omkostninger tæt forbundne:

Billig storage til Bronze-data
Compute anvendes kun ved behov i Silver-laget
Optimerede forespørgsler og modeller i Gold-laget
Adskillelse af indlæsning og analyse-workloads
”Skalér ved belastning – stop ved inaktivitet” bør være et centralt designprincip.


Konklusion
Medallion-arkitekturen tilbyder en robust, skalerbar og performance-optimeret tilgang til dataindlæsning og -forarbejdning i moderne data warehouse-miljøer.
Gennem:

Et råt og omkostningseffektivt Bronze-lag
Et effektivt Silver-lag til transformationer
Et forbrugs- og performanceoptimeret Gold-lag
…og ved konsekvent at udnytte cloud-native egenskaber opnås en dataplatform, der er:

Fremtidssikret
Omkostningseffektiv
Let at governere og videreudvikle
Arkitekturen understøtter både klassiske BI-scenarier og moderne analytiske workloads og udgør dermed et solidt fundament for datadrevne organisationer.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Self-service.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Self-service-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Self-service-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)