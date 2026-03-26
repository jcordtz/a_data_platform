![microsoft](../images/microsoft.png)

# Eine Datenplattform - Laden und performance

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README-de.md)


## Daten auf Basis der Medallion-Architektur in die Datenplattform aufnehmen

### Einführung

Die beschriebene Medallion-Architektur ist zu einem de-facto-Standard für moderne Datenplattformen und
Data-Warehouse-Designs – insbesondere in cloudbasierten Umgebungen. Die Architektur bietet eine strukturierte, skalierbare und
Leistungsoptimierter Ansatz zur Erfassung, Verfeinerung und Bereitstellung von Daten aus Quellsystemen für analytische Konsumenten.

Dieser Abschnitt erklärt, wie Daten aus einer Quelle in einen analytischen Arbeitsbereich aufgenommen werden sollten, basierend auf dem Medallion
Architektur, mit besonderem Fokus auf:

1. Design der Datenpipeline
2. Leistungsoptimierung
3. Cloud-native Prinzipien
4. Robustheit, Skalierbarkeit und Kostenkontrolle

Dieser Abschnitt basiert auf modernen Cloud-Plattformen wie Azure, AWS oder GCP, aber die Prinzipien sind generisch und plattformunabhängig.

>![Note]
>In diesem Abschnitt verwenden wir die Bezeichnungen Bronze, Silber und Gold anstelle von Ingest, Transform und Publish, da sich die Diskussion hier auf die Verwendung der Medallion-Architektur stützt.

## Allgemeine Architekturprinzipien

Um zusammenzufassen, was aus dem *Hauptdokument* gelernt werden kann  : Die Medallion-Architektur teilt den Datenlebenszyklus in klar getrennte Schichten auf:

|Layer|Zweck|
|-----|---------------|
|Bronze|Rohdaten aus Quellsystemen – unverändert und vollständig|
|Silber|Bereinigende, standardisierte und angereicherte Daten|
|Gold|Geschäftsfähige, aggregierte und leistungsoptimierte Daten|

Dieser geschichtete Ansatz unterstützt:

1. Trennung der Anliegen
2. Rückverfolgbarkeit und Governance
3. Optimale Leistung in jeder Verarbeitungsphase
4. Cloud-Skalierbarkeit

## Gesamtbelastungsprinzip

Das Gesamtkonzept des Datenladens ist schon lange und sollte immer sein: Keine Bewegung großer Mengen mischen
des Verfeinerungsprozesses jedes Elements dieser Daten.

Auch wenn es oft vergessen wird, ist das immer noch SEHR gute Übung – und das Fehlen ist oft der Schmerzpunkt von Leistungsproblemen.

Die "Geschichte", die ich meistens verwende, wenn ich das erkläre, handelt vom Umzug von einem Haus zum anderen.

Die erste Aufgabe ist, alle Kisten vom alten Ort zum neuen zu bringen – ohne in jede Kiste zu schauen. Das ist oft der Fall
Von Umzugshelfern gemacht, und ich möchte nicht, dass sie in jede Kiste schauen.

Wenn die Box dann am neuen Ort ist, schaust du dir die Box an – nicht in der Box – um zu sehen, in welchen Raum diese Box muss.
Und das würde höchstwahrscheinlich auch von Umzugsleuten oder Freunden gemacht werden, also gibt es trotzdem keinen Grund, in die Kiste zu schauen.

Und dann, wenn die Box im richtigen Raum ist, öffnest du sie (persönlich) und überlegst, was du mit dem Inhalt machen sollst.

## Eine Anmerkung zu Dateiformaten

Wie du im weiteren Abschnitt lernen wirst, Akten, Orte und Gesamtrollen. Und da es viele verschiedene Dateiformate gibt
Schauen wir uns an, was normalerweise in der Datenplattform gesehen und daher verwendet wird.

### JSON (JavaScript-Objektnotation)

**Typische Anwendungsfälle**: API-Nutzlasten, Konfigurationsdateien, halbstrukturierter Datenaustausch zwischen Anwendungen, Ereignis- und Streamingdaten (Telemetrie, Protokolle)  
**Wichtige Merkmale**: Textbasiert und menschenlesbar, schemalos oder lose durchgesetzt, hierarchische und verschachtelte Struktur, breit unterstützt über Programmiersprachen hinweg.  
**Stärken**: Ausgezeichnet für Datenaustausch und APIs, flexible Datenstruktur, leicht lesbar und fehlerfrei.  
**Einschränkungen**: Schlechte Kompression, nicht spaltenförmig, ineffizient für groß angelegte Analysen  

### Avro

**Typische Anwendungsfälle**: Datenserialisierung in verteilten Systemen, Streaming-Plattformen (Kafka, Event Hubs), Datenpipelines und System-zu-System-Integration  
**Wichtige Merkmale**: Binärformat (nicht für Menschen lesbar), starkes explizites Schema, Schema gespeichert mit/neben den Daten, zeilenorientiert  
**Stärken**: Kompakte und schnelle Serialisierung, unterstützt die Entwicklung von Schemas, eignet sich gut für Streaming-Workloads  
**Einschränkungen**: Nicht für Analytics optimiert, erfordert Werkzeuge zur Inspektion, weniger intuitiv für manuelle Inspektionen 

### ORC (Optimierte Zeilenspalte)

**Typische Anwendungsfälle**: Großflächige Analytik, Data Warehousing, OLAP-Workloads in Big-Data-Plattformen  
**Wichtige Merkmale**: Spaltenspeicherformat, hohe Kompression, Statistiken und Indexierungen auf Spaltenebene, starke Schemaunterstützung  
**Stärken**: Hohe Abfrageleistung, effiziente Speichernutzung, effektiv für Aggregationen und Filterung.  
**Einschränkungen**: Weniger flexibel als Parquet, eng mit Big Data Engines gekoppelt, nicht für häufige Updates ausgelegt  

### XML (eXtensible Markup Language)

**Typische Anwendungsfälle**: Integration von Unternehmenssystemen, dokumentenzentrierte Daten, Industriestandards (wie Finanzen, Gesundheitswesen, öffentlicher Sektor)  
**Wichtige Merkmale**: Textbasiert und wortreich, Tag-orientierte hierarchische Struktur, starke Schemavalidierung über XSD  
**Stärken**: Ausgereiftes Ökosystem, starke Validierungsfähigkeiten, geeignet für Dokumentendaten  
**Einschränkungen**: Große Dateigrößen, teures Parsen, nicht geeignet für Analysen 

### CSV (Komma-getrennte Werte)

**Typische Anwendungsfälle**: Einfacher tabellarischer Datenaustausch, Importe/Exporte, Interoperabilität von Tabellenkalkulationen  
**Wichtige Merkmale**: Klartext, zeilenbasiert, kein eingebautes Schema oder Metadaten, ein Datensatz pro Zeile  
**Stärken**: Universell unterstützt, leicht zu generieren und zu konsumieren, für Menschen lesbar  
**Einschränkungen**: Keine Durchsetzung von Datentypen, keine Kompression oder Indexierung, empfindlich gegenüber Trennzeichen und Kodierungsproblemen  

### TXT (Klartext)

**Typische Anwendungsfälle**: Logs, Freiform- oder Rohtext, temporäre oder zwischenliegende Speicherung 
**Schlüsselmerkmale**: Unstrukturiert oder minimal strukturiert, kein Schema oder Metadaten, beliebiges Layout  
**Stärken**: Maximale Flexibilität, einfach zu generieren, keine speziellen Werkzeuge erforderlich  
**Einschränkungen**: Erfordert benutzerdefiniertes Parsen, nicht analytikfreundlich, keine Struktur oder Governance 

### Parquet

**Typische Anwendungsfälle**: Data Lakes, analytische Workloads, BI, Reporting, maschinelles Lernen 
**Schlüsselmerkmale**: Spalten-, Binärformat, Schema-aware, Für verteilte Verarbeitung konzipiert  
**Stärken**: Ausgezeichnete Leistung für Analytics, hohe Kompression, Spaltenbeschneidung und Prädikaten-Pushdown, breite Unterstützung des Ökosystems  
**Einschränkungen**: Nicht für Menschen lesbar, nicht geeignet für Updates auf Zeilenebene, Benötigt analytische Engines 

### XLS / XLSX (Excel)

**Typische Anwendungsfälle**: Geschäftsberichterstattung, Ad-hoc-Datenanalyse, kleine bis mittlere Datensätze, Datenaustausch mit Geschäftsnutzern  
**Schlüsselmerkmale**: Binär- (XLS) oder XML-basierter Container (XLSX), unterstützt Formeln, Diagramme, Formatierung, stark interaktiv  
**Stärken**: Sehr benutzerfreundlich, reichhaltige Funktionalität, weit verbreitet  
**Einschränkungen**: Nicht skalierbar, schlechte Leistung bei großen Volumen, nicht geeignet als Aufzeichnungssystem  

### Delta-See

**Typische Anwendungsfälle**: Verwaltete Data Lakes, Medallion-Architekturen (Bronze/Silber/Gold), Inkrementelle und Streaming-Datenverarbeitung  
**Schlüsselmerkmale**: Aufbau auf Parquet, Transaktionsprotokoll ("_delta_log"), ACID-Transaktionen auf Data Lakes, Schema-Durchsetzung und -entwicklung, Zeitreisen und Versionsmanagement 
**Stärken**: Kombiniert Seen und Datenbanken, unterstützt Updates, Löschungen und Zusammenführungen, ideal für moderne Analyseplattformen  
**Einschränkungen**: Erfordert kompatible Motoren, leichte Kostenübernahme im Vergleich zu rohem Parquet 

**Eine Zusammenfassungstabelle**

| Format | Struktur | Lesbar für Menschen | Analytics-bereit | Schema | Typische Verwendung |
|------------|-----------|----------------|------------------|--------|-------------|
| JSON | Semi | Ja | Nein | Optional | APIs, Events |
| Avro | Row | Nein | Begrenzt | Ja | Streaming |
| ORC | Spalte | Nein | Ja | Ja | Data Warehousing |
| XML | Semi | Ja | Nein | Ja | Unternehmensintegration |
| CSV | Tabular | Ja | Begrenzt | Nein | Datenaustausch |
| TXT | Keine | Ja | Nein | Nein | Protokolle, Text |
| Parquet | Spalte | Nein | Ja | Ja | Datenseen |
| XLS/XLSX | Tabular | Ja | Nein | Ja | Geschäftsanalyse |
| Delta Lake | Spalte | Nein | Ja (Fortgeschritten) | Ja | Verwaltete Datenseen |

Aus einer Datenplattform betrachtet, sind dies die vorgeschlagenen Formate in den verschiedenen Schichten:

|Layer|Art der Daten|Vorgeschlagenes Format|
|-----|------------|----------------|
|Bronze|Rohdaten landen|Parquet/CSV|
|Bronze|Streaming-Eingabe|JSON/Avro|
|Silber|Kuratierte Daten|Delta Lake|
|Gold|Analytics & ML|Delta Lake|
|Archiv|Langzeitlagerung|Parquet|

## Schritt 1: Datenaufnahme in die Bronzeschicht

Die Bronze-Schicht fungiert als Aufzeichnungssystem für alle aufgenommenen Daten. Daten sollten so nah wie möglich gespeichert werden
so gut wie möglich zur Quelle, sowohl semantisch als auch strukturell.

### Designprinzipien für die Bronzeschicht

1. **Keine/minimale Transformation**
In der Bronze-Schicht sollten die Daten im Rohformat gespeichert werden, wobei Datentypabbildungen, Geschäftsregeln und Joins vermieden werden.
Das bedeutet, dass Sie Quellspalten, Feldnamen und Formate beibehalten und den Inhalt "wie er ist" beibehält.

Dies gewährleistet Reproduzierbarkeit, einfachere Fehlersuche und die Möglichkeit, Daten bei Bedarf erneut zu verarbeiten.

Die *minimale Transformation* berücksichtigt die Tatsache, dass Sie den Inhalt höchstwahrscheinlich in einer Datei irgendeines Typs speichern (siehe #3).
Es bedeutet einfach, dass eine in einer Datenbank gespeicherte Tabelle nicht in *eine andere* Datenbank verschoben wird.

2. **Inkrementelle Aufnahme**
Um die beste Leistung und Skalierbarkeit zu erzielen, sollten Daten – wenn möglich – schrittweise mit Mechanismen wie Mechanismen wie Mechanismen wie
ändere Datenerfassung (CDC), Wasserzeichen (z. B. Zeitstempel, Identitätsspalten) oder Ereignisströme (z. B. Kafka, Event Hubs).

Du solltest also versuchen, vollständige Neuladungen zu vermeiden, es sei denn, die Datenvolumen sind sehr klein.

>[! Anmerkung]
>Höchstwahrscheinlich wäre die erste Ladung eine volle Ladung.

3. **Cloud-Speicher als Landezone**
Die Bronze-Schicht sollte in kostengünstigen, elastischen Objektspeichern wie Azure Data Lake Gen2 liegen.
Amazon S3 oder Google Cloud Storage in empfohlenen Dateiformaten.

### Überlegungen zu Leistungsoptimierungen in der Bronze-Schicht

Um eine möglichst hohe Lastgeschwindigkeit zu erreichen, lohnt es sich, Folgendes zu beachten:

* Parallele Eingabe (partitioniert z. B. nach Tabelle, Datum oder Geschäftsschlüssel)
* Große Dateigrößen (typischerweise 100–1000 MB pro Datei)
* Kompression (Snappy, Gzip)
* Partitionierung nach Aufnahmezeit oder Geschäftsattribut
* Vermeiden Sie das Sortieren und wenn möglich "die Where-Klausel" an der Quelle
* Verwenden Sie jeden verfügbaren PaaS-Dienst in der Cloud, der erstellt wurde, um Daten optimal zu laden, wie z. B. Azure Data Factory.
* Wenn möglich, nutzen Sie Streaming-Technologien

Die Bronze-Schicht sollte horizontal skalieren und ist nicht für komplexe Abfragen gedacht.

## Schritt 2: Verwandlung in die Silberschicht

Die Silver-Schicht repräsentiert gereinigte, konsistente und technisch korrekte Daten.

In dieser Phase verlagert sich der Fokus von der Quellsystemstruktur hin zu einem gemeinsamen und standardisierten Ansatz.
Der Fokus liegt darauf, Daten zu haben, die leicht zum *Endergebnis* in der Gold-Schicht kombiniert werden können.

Diese Schicht enthält keine Strukturen, die **verbunden** sind  , sondern Strukturen, die **leicht** verbunden werden können.

Um dies zu erreichen, sind typische Transformationen Funktionen wie:

* Datentyp-Normalisierung
* Deduplizierung
* Null-Handhabung
* Referentielle Integritätsvalidierung
* Zeitzonennormalisierung
* Harmonisierung von Code- und Referenzdaten
* Im Einklang mit a/den [Namensstandards](.. /DataModelling/NamingStandard.md)

Es ist immaterialistisch, dass alle Transformationen deterministisch, versionskontrolliert und idempotent sind

### Performance Design in der Silberschicht

In der Siler-Schicht wirst du höchstwahrscheinlich Python und/oder SQL verwenden, daher sollte das verwendete Format dies unterstützen
In bestmöglicher Weise.

1. **Spaltenspeicherformate**
Silberdaten sollten in Säulenformaten wie Parquet, Delta Lake, Iceberg und Hudi gespeichert werden.
Dies ermöglicht Prädikaten-Pushdown, selektive Spaltenlesungen und effiziente Kompression.

2. **Partitionierung und Clustering**
Um die beste Leistung bei der Adressierung von Daten in der Silver-Schicht für die Verarbeitung an die
Goldschicht: Eine korrekte Trennung ist wichtig zu beachten. Der Schlüssel zu dieser Teilung könnten Gegenstände sein
wie Datum (z. B. event_date), Kunde / Mieter oder Region.  
Optional mit Z-Ordnungs- oder Clustering-Techniken erweitert.

Bitte beachten Sie, dass Überpartitionierung die Leistung erheblich beeinträchtigen kann.

3. **ELT statt ETL**
Verwenden Sie Cloud-Warehouse- oder Lakehouse-Compute-Engines für Transformationen. Und bei der Auswahl der Dienste, die man nutzen soll, ist
Es lohnt sich, Dienste zu wählen, die Rechenleistung vom Speicher trennen.

Dieser Ansatz, Rechenleistung auf die Daten zu bringen und die Daten nicht in einer Technologie auf einer Compute zu "verbergen", stellt sicher, dass
Fähigkeit, auf Abruf zu skalieren und unnötige Datenübertragungen zu minimieren. Es erhöht auch deine Fähigkeit erheblich,
Wählen Sie die passenden Dienstleistung(en) für die betreffende Aufgabe.

Wenn Sie mit einer Linux-Umgebung vertraut sind, ist es der Gedanke hinter dem Pipe-Symbol ("|").

Wenn Sie unter Linux zum Beispiel bestimmte Zeilen und Spalten aus einer großen Datei nehmen und diese Daten sortieren und einige Formatierungen ändern, um in einem formatierten Bericht zu enden, könnte das so aussehen:

**Katzenakte | grep "A pattern" | Schnitt -d, -f1,3,5 | sort -u | sed -e "s/DEMO/Demo" | awk**

In diesem Fall druckst du  die Datei zuerst *aus* auf den Bildschirm (Katze), das wird dann an den *greb*-Befehl gesendet, der nur die Zeile mit dem Muster *A-Muster* zurückgibt. Dann gibt der Ausgabe-Aufruf zum *cut*-Befehl zurück, der – unter Verwendung von , als Separator – nur die Spalte in Position 1, 3 und 5 zurückgibt. Dann wird die Ausgabe uniqly (-u) sortiert und vor der Formatierung mit awk wird das Wort *DEMO* mit dem Streaming-Editor *sed* in *Demo* geändert.

Hier bringst du verschiedene Dienste (also Linux-Befehle) zu den Daten. Und in diesem Fall kann jeder Befehl nur **eine** Sache bewirken. Es könnte Optionen wie den Cut<Befehl geben, bei dem du -dsomething> verwenden kannst, um anzuzeigen, dass deine Daten getrennt sind, aber der *cut*- Befehl kann trotzdem nur ein "Cut" ausführen.

Beispiele für Dienste, die diesen Ansatz verwenden (und mehr funktional sind als der *cut*- Befehl :smile:) sind:

* DataBricks – verfügbar in Azure, AWS und GSP.
* Microsoft Fabric
* AWS Redshift
* Google BigQuery
* Schneeflocke

## Schritt 3: Modellieren in der Goldschicht

Die Gold-Schicht ist die verbraucherorientierte Schicht, in der Daten für die Nutzung mit Business Intelligence (BI), Reporting, Machine Learning, KI, GenAI, AgenticAI und API-basiertem Zugriff optimiert werden.

Hier finden Sie die Datensätze, Data Marts und sogar Data Warehouses.

In diesem Stadium sind Leistung, Stabilität und semantische Konsistenz von größter Bedeutung. Daher ist das Konzept, dass ein Datensatz *nur* die Zeilen und Spalten enthält, die für diese Aufgabe benötigt werden, wichtig – nicht nur aus Governance-Sicht, sondern auch aus Performance-Sicht.

### Datenmodellierungsansätze

Um die Gold-Ebene benutzerfreundlich zu gestalten, kommen Datenmodelle ins Spiel, und gängige Modellierungsmuster sind:

* Sternschemata (Fakten und Dimensionen)
* Aggregierte Tabellen
* Feature Stores für maschinelles Lernen
* Datensätze

Um diese Modelle zu erleichtern, sollten Metadaten explizit definiert werden, einschließlich
Geschäftsdefinitionen, KPI-Logik, Dokumentation und Eigentum

### Leistungsoptimierung in der Goldschicht

Um eine möglichst schnelle Leistung zu gewährleisten, gibt es einige Techniken, die man in Betracht ziehen sollte.

* Vorberechnete Aggregationen
* Materialisierte Ansichten
* Selektive Denormalisierung
* Caching (Lagerhaus-Engine oder BI-Werkzeuge)
* Separate Compute-Pools pro Workload

Die Gold-Schicht muss eine geringe Abfragelatenz liefern und daher von schweren Aufnahme- und Transformationslasten isoliert sein.
Das bedeutet, dass die Daten in einem der oben beschriebenen Modellierungsmuster nur die erforderlichen Zeilen und Spalten füllen
die Aufgabe, für die es entworfen ist.

## Cloud-native Überlegungen

Die Begründung und Vorteile der Nutzung der Cloud für eine Datenplattform haben mehrere verschiedene Aspekte.

1. **Speicher und Berechnung entkoppeln**

Die Idee, wie man Rechenleistung (=Funktionalität) auf die Daten bringt und nicht umgekehrt, ist mit Cloud-Diensten wirklich möglich.

Cloud-Plattformen ermöglichen es, Speicher und Rechenleistungen unabhängig (und ab) und ohne Ausfallzeiten zu skalieren. Du kannst
Pausieren oder reduzieren Sie außerdem Dienste, wenn sie ungenutzt sind oder nicht benötigt werden, und das bietet Ihnen eine flexiblere Möglichkeit, Kosten zu optimieren 
ohne auf Leistung zu verzichten.

2. **Infrastruktur als Code (IaC)**
Nutzen Sie das IaC, um Pipelines, Speicher und Rechenleistungen konsistent bereitzustellen. Dies hilft Ihnen, eine Umgebungsparität über Entwicklung, Test und Produktion sicherzustellen und somit die Möglichkeit, neue Funktionen automatisch auf Ihre Analyseplattform bereitzustellen.

3. **Sicherheit und Governance**

Aus Sicherheits- und Governance-Sicht spielen Identitäten eine wichtige Rolle. Die Verwendung von Managed Idententities und Role Basec Access Control (RBAC) mit Ihren Diensten ermöglicht es Ihnen, ein Setup zu erstellen, bei dem nur ein bestimmter Dienst Zugriff auf Ihre Daten hat.

Außerdem ist Verschlüsselung in Ruhe und während des Transits Teil der meisten Cloud-Setups, was bedeutet, dass dies automatisch vorhanden ist, wenn ein Dienst installiert und genutzt wird.

Und um sicherzustellen, dass Sie die Art der Tourdaten kennen, können Sie auch Datenklassifizierung, Herkunft und Compliance-Kontrollen in einer Cloud leichter etablieren.

4. **Beobachtbarkeit und Überwachung**

Stellen Sie sicher, dass Sie den Build-Logging-Mechanismus für die verschiedenen Dienste aktivieren und nutzen, sodass Sie Pipeline-Metriken und Logging überwachen können.

Setzen Sie bei Bedarf auch notwendige Projekte zur Datenqualität um und die Möglichkeit, jede Aktion zu validieren, die nicht vorhanden ist, um diese Qualität zu erhöhen.

**Leistung und Kosten ausbalancieren**

In der Cloud sind Leistung und Kosten eng miteinander verknüpft:

* Nutze kostengünstige Speicherung für Bronze-Daten
* Verbrauchen Sie Rechenleistungen nur, wenn sie bei Silver-Transformationen benötigt werden
* Optimieren Sie Abfragen und Modelle in der Gold-Schicht
* Getrennte Aufnahme- und Analyse-Workloads
* "Skalieren, wenn beschäftigt – stoppen, wenn es im Leerlauf ist" sollte ein leitendes Designprinzip sein.

## Fazit

Die Medallion-Architektur bietet einen robusten, skalierbaren und leistungsoptimierten Ansatz zur Datenaufnahme und -verarbeitung in einer modernen Datenplattform.  

* Die Bronzeschicht roh und kostengünstig halten
* Optimierung der Silberschicht für effiziente Transformationen
* Gestaltung der Gold-Schicht für die Verbraucherleistung
… und indem Organisationen cloudnatives Potenzial voll ausnutzen, können sie eine zukunftssichere Datenplattform aufbauen,
Kosteneffizient und leicht zu verwalten und weiterzuentwickeln.

In dieser Hinsicht bietet diese Architektur und dieser Ansatz Unterstützung sowohl für traditionelle BI als auch für fortgeschrittene analytische Workloads und bildet damit eine solide Grundlage für datengetriebene Organisationen.



[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README-de.md)