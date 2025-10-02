![microsoft](images/microsoft.png)

# Eine Datenplattform - Daten ermitteln

[![en](https://img.shields.io/badge/lang-en-blue.svg)](establish-data.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](establish-data-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](establish-data-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Daten ermitteln

Leitprinzipien

1. Gesetze wie die europäische DSGVO oder der CCPA aus Kalifornien müssen eingehalten werden.
2. Daten dürfen nur in dem Kontext verwendet werden, in dem sie erhoben werden.
3. Die Entwicklung kann nicht auf Produktionsdaten erfolgen.
4. Unterscheiden Sie zwischen der Speicherung von Daten - "Sicherheit" - und der Verwendung von Daten - "Datenschutz".

Die wichtigsten technischen Mechanismen, die verwendet werden können, um eine ordnungsgemäße Handhabung in den Umgebungen zu gewährleisten, sind die folgenden:

1. Datenklassifizierung - ermöglicht es, die Art der Daten zu verstehen, mit denen Sie es zu tun haben.
2. Trennung der Umgebung – Durch die Trennung der Umgebungen kann eine Vermischung von Daten vermieden werden. Dies ermöglicht einen einfacheren Verwaltungsprozess.
3. Datenrichtlinien – Die Verwendung von Richtlinien stellt sicher, dass allgemeine Rahmenbedingungen wie ISO27XXX, NIST oder ähnliches in allen Umgebungen befolgt werden.
4. Beschriftung – hilft bei der Identifizierung wichtiger Elemente jeder Umgebung, z. B. Besitzer und Umgebungstyp.
5. Verschlüsselung - Die Verwendung von Verschlüsselung, möglicherweise mit Ihren eigenen Schlüsseln, kann eine Sicherheitsmethode sein.

Nicht-Produktions-Datensatzerstellungsprozess

Der Prozess der Erstellung von Daten, die in Nicht-Produktionsumgebungen verwendet werden können, kann einer (oder mehrere) der folgenden sein:

1. Kopie der Produktionsdaten.
2. Datengenerierung von gefälschten Daten.
3. Anonymisierung.
4. Pseudonymisierung.
5. Verschlüsselung + Wörterbuch.
6. Datensatz "Keine Beziehungen".

Die verwendete(n) Methode(n) hängt in der Regel von der Klassifizierung der verschiedenen Datenelemente ab. Um die Klassifizierung verschiedener Daten/Datensätze zu bestimmen, sollte eine "Datenbank" dieser Informationen geführt werden. Dies sollte dann der "Nachschlagepunkt" sein, um die richtige Datenverarbeitung zu etablieren.

### Datenverarbeitung im Detail

In diesem Abschnitt werden die verschiedenen Optionen erläutert, mit denen ein oder mehrere Datensätze in einer Nicht-Produktionsumgebung erstellt werden können. Sie werden höchstwahrscheinlich eine Kombination davon benötigen.
Wichtig für EU-Vorschriften: Pseudonymisierung und Anonymisierung von Daten werden nach DSGVO, dem Datenschutzgesetz der EU, unterschiedlich behandelt.
Verweis auf EU-Dokument


#### Kopie der Produktionsdaten

Dies ist zwar keine empfohlene Vorgehensweise, aber manchmal ist es möglich und erlaubt, Produktionsdaten (möglicherweise eine Teilmenge von) in einer Nicht-Produktionsumgebung zu verwenden. Diese Datasets sind wahrscheinlich als schreibgeschützt markiert.
Ein Azure-Dienst, der für diese Aufgabe geeignet ist, können Data Factory-Copy-Pipelines sein.

#### Datengenerierung gefälschte Daten

In diesem Prozess erstellt man gefälschte Daten basierend auf den Informationen über Datentyp, Länge, Muster, Inhalt usw., denen diese Daten entsprechen müssen. Wichtig ist, dass es sich um echte gefälschte Daten handelt und nicht um Daten, die ein gefälschter Produktionsdatensatz sind.
Das Erstellen eines gefälschten Datensatzes ist oft eine schwierige Aufgabe, daher lohnt es sich, sicherzustellen, dass der etablierte Prozess wiederverwendet, automatisiert, skaliert und parametrisiert werden kann.

Tools zum Erstellen gefälschter Daten mit Python können sein
-Fälscher
-SDV
-Gretel

#### Anonymisierung

Die Anonymisierung kann verwendet werden, wenn Sie ein Produktionsdataset verschlüsseln und in eine Nicht-Produktionsumgebung übertragen können. Anonyme Daten sind Daten, die so verändert wurden, dass eine erneute Identifizierung von Daten nicht möglich ist.
Die Verschlüsselung kann auf viele Arten mit verschiedenen Techniken wie Datenrauschen, Substitution und Aggregation erfolgen.

Es ist wichtig zu beachten, dass die Anonymisierung ein "einseitiger Prozess" ist, bei dem man die Möglichkeit verliert, bis zu den Originaldaten zurückzuverfolgen. Sie können diese Daten auch nicht verwenden, um eine Verbindung mit anderen Produktionsdatasets herzustellen und diese zu verwenden.

Data Factory-Dataflows/Azure Databricks können dafür mit der Microsoft Presidio-Erweiterung verwendet werden.

#### Pseudonymisierung

Die Pseudonymisierung ist im Wesentlichen derselbe Prozess wie die Anonymisierung, mit einem großen Unterschied. Pseudonyme Daten sind Daten, die vom Ursprung der Daten anonymisiert wurden, aber bei Bedarf erneut identifiziert werden können.
Tokenisierungs- und Hashing-Funktionen können zur Pseudonymisierung von Daten verwendet werden.

Hierfür können Data Factory-Dataflows/Azure Databricks verwendet werden.

#### Verschlüsselung mit Schlüssel

In diesem Fall schützen Sie Ihre Daten mit einem Verschlüsselungsschlüssel, und nur die Personen, die Zugriff auf den Schlüssel haben, können die Daten verwenden.

Dieser Schlüssel kann in einem Azure Key Vault gespeichert werden.

>![Note]
>Dies ist kein gültiger DSGVO-"Schutzmechanismus", da er "nur" den Zugriff auf die Daten schützt, nicht die Verwendung der Daten.


#### Datensatz "Keine Beziehungen"

Bei diesem Ansatz erstellen Sie Datasets, die "echte" Daten auf Spaltenebene enthalten. 

Wenn Sie beispielsweise eine Postleitzahlenspalte haben, wären die Postleitzahlen hier echt, und wenn Sie einen Straßennamen im selben Datensatz haben, wären es auch echte Straßennamen.

Der Ansatz "Keine Beziehungen" kommt ins Spiel, wenn Daten aus der einzelnen Zeile angezeigt werden. Im obigen Fall wären der Straßenname, die Hausnummer und die Postleitzahl logisch sinnvoll, aber sie würden "in Wirklichkeit" nicht existieren.
Ein Ansatz könnte also darin bestehen, Sätze verschiedener Daten zu erstellen, die Elemente darstellen, die personenbezogen sind – könnte eine Datenbank mit Straßennamen in einem Satz sein, alle Postleitzahlen in einem anderen Satz, die 20 häufigsten Vornamen in einem dritten, die 20 am häufigsten verwendeten Nachnamen in einem vierten und so weiter.

Und beim Erstellen einer neuen Zeile werden Zufallswerte aus den einzelnen Sätzen entnommen und verwendet, um diese Elemente im Kontext einer "Person" zu erstellen.

Hierfür können Data Factory-Dataflows/Azure Databricks verwendet werden.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](establish-data.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](establish-data-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](establish-data-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
