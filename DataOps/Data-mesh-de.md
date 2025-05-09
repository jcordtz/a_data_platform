![microsoft](../images/microsoft.png)

# Eine Dattenplatform - Data Mesh

[![en](https://img.shields.io/badge/lang-en-red.svg)](Data-mesh.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Data-mesh-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Data-mesh-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

## Einleitung

In der heutigen datengesteuerten Welt sind Unternehmen ständig auf der Suche nach Möglichkeiten, ihre Daten effektiver zu verwalten und zu nutzen. Ein aufkommendes Konzept, das große Aufmerksamkeit erregt hat, ist das Data Mesh. Aber was genau ist ein Data Mesh und warum wird es zu einer beliebten Wahl für moderne Datenarchitekturen?

Data-Mesh-Architekturen zielen darauf ab, eine skalierbarere, flexiblere und effizientere Art der Datenverwaltung zu schaffen, die es Unternehmen erleichtert, ihre Datenbestände effektiv zu nutzen.

## Was ist Data Mesh?

Data Mesh ist ein Architekturmuster, das entwickelt wurde, um die Herausforderungen traditioneller zentralisierter Datenmanagementsysteme zu bewältigen. Es fördert einen dezentralen Ansatz, bei dem Dateneigentum und Governance auf verschiedene Bereiche innerhalb eines Unternehmens verteilt sind. Diese Verschiebung ermöglicht es Teams, die den Daten am nächsten sind, diese zu verwalten und zu nutzen, was Agilität und Skalierbarkeit fördert.

## Schlüsselprinzipien von Data Mesh

1) Domain-Besitz: Data Mesh weist das Eigentum an Daten bestimmten Bereichen zu, z. B. Finanzen, Marketing oder Betrieb. Jede Domain ist für die Verwaltung ihrer Daten verantwortlich und stellt sicher, dass sie korrekt, sicher und zugänglich sind.
2) Daten als Produkt: In einem Data Mesh werden Daten wie ein Produkt behandelt, mit klaren Definitionen, Qualitätsstandards und Lebenszyklusmanagement. Dieser Ansatz stellt sicher, dass die Daten zuverlässig und wertvoll für ihre Verbraucher sind.
3) Self-Serve-Datenplattform: Data Mesh bietet eine Self-Service-Plattform, die es Teams ermöglicht, unabhängig auf Daten zuzugreifen und mit ihnen zu arbeiten. Dies reduziert Engpässe und beschleunigt die datengetriebene Entscheidungsfindung.
4) Föderierte Governance: Während das Dateneigentum dezentralisiert ist, bleibt die Governance föderiert. Das bedeutet, dass globale Richtlinien und Standards in allen Bereichen durchgesetzt werden, um Konsistenz und Compliance zu gewährleisten.

## Vorteile von Data Mesh

Die Implementierung eines Data Mesh bietet mehrere Vorteile:

1) Skalierbarkeit: Durch die Verteilung der Verantwortlichkeiten für das Datenmanagement können Unternehmen ihre Datenvorgänge effektiver skalieren.
2) Agilität: Teams können sich schnell an sich ändernde Geschäftsanforderungen anpassen und datengestützte Entscheidungen treffen, ohne auf eine zentrale Genehmigung warten zu müssen.
3) Verbesserte Datenqualität: Domänenspezifisches Eigentum stellt sicher, dass Daten von denjenigen gepflegt werden, die sie am besten verstehen, was zu höherer Qualität und Genauigkeit führt.
4) Verbesserte Zusammenarbeit: Data Mesh fördert die Zusammenarbeit zwischen IT- und Geschäftsteams und richtet Dateninitiativen an den Unternehmenszielen aus.

Data-Mesh-Architekturen wurden entwickelt, um die Herausforderungen bei der Verwaltung von Daten in großem Maßstab in großen und komplexen Organisationen zu bewältigen. Hier sind die wichtigsten Arten und Prinzipien von Data-Mesh-Architekturen:

## Arten von Data Mesh-Architekturen

Data Mesh kann auf unterschiedliche Weise implementiert werden. Hier sind einige davon

1) Domänenorientiertes dezentrales Dateneigentum und -architektur

    - **Beschreibung**: Dieses Prinzip beinhaltet die Dezentralisierung des Dateneigentums an Domänenteams, die für ihre eigenen Daten verantwortlich sind. Jedes Domain-Team verwaltet seine Daten als Produkt und stellt sicher, dass sie qualitativ hochwertig, gut dokumentiert und leicht zugänglich sind.
    - **Vorteile**: Es reduziert Engpässe und ermöglicht es Fachexperten, Daten effektiver zu handhaben.

2) Daten als Produkt

    - **Beschreibung**: Daten werden als Produkt mit einem eigenen Lebenszyklus behandelt, einschließlich Entwicklung, Wartung und Verbesserung. Jedes Datenprodukt ist so konzipiert, dass es auffindbar, adressierbar und vertrauenswürdig ist.
    - **Vorteile**: Dieser Ansatz stellt sicher, dass die Daten zuverlässig sind und im gesamten Unternehmen sicher verwendet werden können.

3) Self-Service-Dateninfrastruktur als Plattform

    - **Beschreibung**: Dieses Prinzip stellt Domain-Teams die Tools und die Infrastruktur zur Verfügung, die sie benötigen, um ihre Daten unabhängig voneinander zu verwalten. Es umfasst Tools zur Datenspeicherung, -verarbeitung und -verwaltung, die einfach zu verwenden und zu integrieren sind.
    - **Vorteile**: Es ermöglicht Teams, autonom zu arbeiten und reduziert die Abhängigkeit von zentralisierten IT-Teams.

4) Föderierte computergestützte Governance

    - **Beschreibung**: Governance-Richtlinien sind in das Datennetz eingebettet und ermöglichen eine dezentrale Steuerung unter Beibehaltung globaler Standards. Dies gewährleistet Compliance und Konsistenz über alle Datenprodukte hinweg.
    - **Vorteile**: Es gleicht das Bedürfnis nach Kontrolle mit der für Innovation erforderlichen Flexibilität aus.

### Komponenten der logischen Architektur

- **Domain-Besitz**: Jede Domain verfügt über ihre eigenen Daten- und Rechenressourcen.
- **Datenprodukt**: Datenprodukte sind die Kerneinheiten der Architektur, die so konzipiert sind, dass sie in sich geschlossen und wiederverwendbar sind.
- **Self-Serve-Plattform**: Eine Datenplattform mit mehreren Ebenen, die verschiedene Datenoperationen unterstützt.
- **Federated Governance**: Richtlinien und Standards sind in das Mesh integriert

## Anwendungen in der Praxis

Viele Unternehmen haben Data Mesh erfolgreich eingeführt, um ihre Datenarchitektur zu transformieren. Zum Beispiel hat OBOS, Norwegens führendes Wohnungsbauunternehmen, seine Datenanalyse mit Fabric mit einem Data-Mesh-Design demokratisiert. Dies ermöglichte es OBOS, eine föderierte Governance zu implementieren und Geschäftsteams mit Self-Service-Arbeitsbereichen auszustatten, wodurch die Geschäftsleistung verbessert und die Betriebskosten gesenkt wurden.

## Data Mesh und die Datenplattform

In der beschriebenen Datenplattform wird in der Regel ein Data Mesh "auf" der Datenplattform aufgebaut. Daher wird das Datengitter in oder nach dem *Veröffentlichungs-Layer* erstellt. Das bedeutet dann, dass die Datenplattform als der Ort fungiert, an dem die Konformität und Qualität der Daten gehandhabt wird, so dass das Datennetz in der Lage ist, die Geschäftsanforderungen genau so zu unterstützen, wie und wo es benötigt wird.  

## Fazit

Data Mesh stellt eine bedeutende Veränderung in der Art und Weise dar, wie Unternehmen an das Datenmanagement herangehen. Durch die Dezentralisierung von Eigentum und Governance bietet es ein skalierbares, agiles und kollaboratives Framework, das eine bessere Datennutzung und Geschäftsergebnisse ermöglichen kann. Da immer mehr Unternehmen die Vorteile von Data Mesh erkennen, ist es bereit, zu einem Eckpfeiler der modernen Datenarchitektur zu werden.

[![en](https://img.shields.io/badge/lang-en-red.svg)](Data-mesh.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Data-mesh-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Data-mesh-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)