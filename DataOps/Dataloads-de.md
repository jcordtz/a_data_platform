![microsoft](../images/microsoft.png)

# Eine Datenplattform - Laden und performance

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)


Datenintegration in ein Data Warehouse mit einer Medallion-Architektur
Einleitung
Die Medallion-Architektur (häufig als Bronze–Silver–Gold bezeichnet) gilt als De-facto-Standard für moderne Datenplattformen und Data-Warehouse-Architekturen – insbesondere in Cloud-basierten Umgebungen. Die Architektur ermöglicht einen strukturierten, skalierbaren und performance-optimierten Ansatz zur Aufnahme, Aufbereitung und Bereitstellung von Daten aus Quellsystemen für analytische Anwendungsfälle.
Dieser Artikel beschreibt, wie Daten aus einer Quelle in ein Data Warehouse geladen werden sollten, unter Verwendung einer Medallion-Architektur, mit besonderem Fokus auf:

Design von Datenpipelines
Performance-Optimierung
Cloud-native Prinzipien
Robustheit, Skalierbarkeit und Kostenkontrolle
Der Artikel orientiert sich an modernen Cloud-Plattformen (z. B. Azure, AWS oder GCP), die beschriebenen Prinzipien sind jedoch plattformunabhängig.


Grundlegende Architekturprinzipien
Die Medallion-Architektur unterteilt den Lebenszyklus von Daten in klar abgegrenzte Schichten:

Ebene	Zweck
Bronze	Rohdaten aus Quellsystemen – unverändert und vollständig
Silver	Bereinigte, standardisierte und angereicherte Daten
Gold	Fachlich aufbereitete, aggregierte und performance-optimierte Daten

Diese Schichtenarchitektur unterstützt:

Trennung der Verantwortlichkeiten (Separation of Concerns)
Nachvollziehbarkeit und Governance
Optimale Performance in jeder Verarbeitungsstufe
Cloud-Skalierbarkeit


Schritt 1: Datenaufnahme in die Bronze-Schicht
Zweck
Die Bronze-Schicht dient als System of Record für alle eingehenden Daten. Die Daten sollten so nah wie möglich an der Quelle gespeichert werden – sowohl in semantischer als auch in struktureller Hinsicht.
Designprinzipien
1. Minimale Transformation

Speicherung der Daten roh (raw)
Vermeidung von Datentyp-Konvertierungen, Business-Regeln und Joins
Beibehaltung der ursprünglichen Spaltennamen, Feldstrukturen und Formate
Dies stellt sicher:

Reproduzierbarkeit
Vereinfachte Fehleranalyse
Möglichkeit zur erneuten Verarbeitung (Reprocessing)
2. Inkrementelle Datenaufnahme
Zur Gewährleistung von Performance und Skalierbarkeit sollten Daten inkrementell aufgenommen werden, z. B. durch:

CDC (Change Data Capture)
Watermarks (Zeitstempel oder Identitätsspalten)
Event-basierte Streams (z. B. Kafka, Event Hubs)
Vollständige Reloads sollten vermieden werden, außer bei sehr kleinen Datenmengen.
3. Cloud Storage als Landing Zone
Die Bronze-Schicht sollte auf kostengünstigem und elastischem Object Storage basieren:

Azure Data Lake Gen2
Amazon S3
Google Cloud Storage
Empfohlene Dateiformate:

JSON / Avro (ereignisbasierte Quellen)
CSV (einfache Batch-Quellen)
Parquet (sofern unterstützt)


Performance-Optimierung in der Bronze-Schicht

Parallele Datenaufnahme (partitioniert nach Tabelle, Datum oder Business-Schlüssel)
Große Dateigrößen (typischerweise 100–1000 MB pro Datei)
Komprimierung (Snappy, Gzip)
Partitionierung nach Ladezeitpunkt oder fachlichem Attribut
Die Bronze-Schicht sollte horizontal skalieren und nicht für komplexe Abfragen optimiert werden.


Schritt 2: Transformation in die Silver-Schicht
Zweck
Die Silver-Schicht repräsentiert bereinigte, konsistente und technisch korrekte Daten.
Der Fokus verschiebt sich hier von der Struktur des Quellsystems hin zu einem gemeinsamen und standardisierten Datenmodell.


Typische Transformationen

Normalisierung von Datentypen
Deduplizierung
Behandlung von Null-Werten
Validierung der referenziellen Integrität
Vereinheitlichung von Zeitzonen
Harmonisierung von Codes und Referenzdaten
Alle Transformationen sollten:

Deterministisch sein
Versionskontrolliert erfolgen
Idempotent ausgeführt werden können


Performance-Design in der Silver-Schicht
1. Spaltenorientierte Speicherformate
Daten in der Silver-Schicht sollten in spaltenorientierten Formaten gespeichert werden, z. B.:

Parquet
Delta Lake / Iceberg / Hudi
Dies ermöglicht:

Predicate Pushdown
Selektives Lesen einzelner Spalten
Effiziente Komprimierung
2. Partitionierung und Clustering
Eine korrekte Partitionierung ist entscheidend für die Performance:

Datum (z. B. event_date)
Kunde / Tenant
Region
Optional kann dies ergänzt werden durch:

Z-Ordering oder Clustering-Techniken
⚠ Eine Über-Partitionierung kann die Performance erheblich verschlechtern.
3. ELT statt ETL
Transformationen sollten mit Cloud-Warehouse- oder Lakehouse-Compute-Engines durchgeführt werden:

Compute wird nahe an den Daten ausgeführt
Skalierung nach Bedarf
Reduzierung unnötiger Datenbewegungen


Schritt 3: Modellierung in der Gold-Schicht
Zweck
Die Gold-Schicht ist die verbrauchernahe Schicht, optimiert für:

Business Intelligence (BI)
Reporting
Machine Learning
API-basierte Datenzugriffe
Hier stehen Performance, Stabilität und fachliche Konsistenz im Vordergrund.


Datenmodellierung
Typische Modellierungsansätze sind:

Sternschemata (Fakten- und Dimensionstabellen)
Aggregationstabellen
Feature Stores für Machine Learning
Metadaten sollten explizit definiert werden, u. a.:

Fachliche Definitionen
KPI-Logik
Dokumentation und Verantwortlichkeiten


Performance-Optimierung in der Gold-Schicht

Vorab berechnete Aggregationen
Materialisierte Views
Selektive Denormalisierung
Caching (im Warehouse oder in BI-Tools)
Separate Compute-Pools je Workload
Die Gold-Schicht sollte:

Niedrige Antwortzeiten liefern
Von aufwändigen Ingestions- und Transformationsprozessen isoliert sein


Cloud-native Überlegungen
1. Trennung von Storage und Compute
Cloud-Plattformen ermöglichen:

Unabhängige Skalierung von Speicher und Rechenleistung
Pausieren oder Herunterskalieren von Compute bei Inaktivität
Optimierung der Kosten ohne Performance-Einbußen
2. Infrastructure as Code (IaC)

Konsistentes Deployment von Pipelines, Storage und Compute über IaC
Sicherstellung identischer Umgebungen (Dev/Test/Prod)
3. Sicherheit und Governance

Managed Identities und IAM
Verschlüsselung im Ruhezustand und bei der Übertragung
Row-Level- und Column-Level-Security
Datenklassifikation, Lineage und Compliance
4. Observability und Monitoring

Pipeline-Metriken und Logging
Data-Quality-Prüfungen
SLA- und SLO-Monitoring
Automatisches Alerting


Balance zwischen Performance und Kosten
In der Cloud sind Performance und Kosten eng miteinander verknüpft:

Kostengünstiger Storage für Bronze-Daten
Compute nur bei Bedarf für Silver-Transformationen
Optimierte Abfragen und Modelle in der Gold-Schicht
Trennung von Ingestion- und Analyse-Workloads
„Skalieren bei Last – pausieren bei Stillstand“ sollte ein zentrales Designprinzip sein.


Fazit
Die Medallion-Architektur bietet einen robusten, skalierbaren und performance-optimierten Ansatz für Datenintegration und -verarbeitung in modernen Data-Warehouse-Umgebungen.
Durch:

Eine rohe und kosteneffiziente Bronze-Schicht
Eine leistungsfähige Silver-Schicht für Transformationen
Eine auf Konsum und Performance ausgelegte Gold-Schicht
…und die konsequente Nutzung cloud-nativer Fähigkeiten entsteht eine Datenplattform, die:

Zukunftssicher ist
Kosteneffizient betrieben werden kann
Einfach zu governieren und weiterzuentwickeln ist
Die Architektur unterstützt sowohl klassische BI-Szenarien als auch moderne analytische Workloads und bildet damit ein tragfähiges Fundament für datengetriebene Organisationen.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)