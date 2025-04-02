![microsoft](../../images/microsoft.png)


# Eine Datenplattform - Partner lösung - *Azure Databricks*

[![en](https://img.shields.io/badge/lang-en-red.svg)](Databricks.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](Databricks-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Databricks-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../../README.md)

<p align="center">
  <img width="200" src="../../images/Databricks_Logo.png">
</p>

## Einleitung

Dieser Ansatz ähnelt dem Azure-basierten Ansatz, mit der Ausnahme, dass *Databricks* anstelle von Data Factory Data Flow und möglicherweise Synapse DW verwendet wird.

Wenn Sie möchten, können Sie auch *Databricks* anstelle von SQL Server verwenden.

Die technologische Unabhängigkeit liegt darin, dass *Databricks* auf Python und Spark basiert. Aber Sie möchten einen Ansatz, bei dem ein größerer Teil der "Programmierung" im selben Tool erledigt wird.

! [Abbildung 1](.. /.. /Bilder/Dänisch/Slide6.JPG)

Abbildung 1

Abbildung 1 zeigt, wo *Databricks* am ehesten hineinpassen würde. Dieser Ansatz passt auch sehr gut zum Medaillon-Ansatz, der sehr häufig in einem *Databricks* Lakehouse-Ansatz verwendet wird.

Weitere Informationen zu *Azure Databricks* finden Sie unter [*Azure Databricks* Info](https://azure.microsoft.com/en-us/products/databricks)

*Azure Databricks* spielt eine Schlüsselrolle bei der Unterstützung des Aufbaus einer Lakehouse-Architektur, die die besten Funktionen von Data Lakes und Data Warehouses kombiniert, um eine einheitliche Datenplattform zu schaffen. 

## *Azure Databricks*

*Azure Databricks* ist eine cloudbasierte Datenanalyseplattform, die Apache Spark nutzt, um eine skalierbare und effiziente Umgebung für die Verarbeitung von Big Data und maschinelles Lernen bereitzustellen. Die Lakehouse-Architektur hingegen ist ein modernes Datenmanagementsystem, das die Vorteile von Data Lakes und Data Warehouses kombiniert und skalierbare Speicher- und Verarbeitungsoptionen bietet und gleichzeitig die Datenqualität und Governance sicherstellt.

## Schlüsselkomponenten der *Azure Databricks* in Lakehouse-Architektur

1) Delta Lake: Delta Lake ist eine optimierte Speicherschicht, die ACID-Transaktionen und die Durchsetzung von Schemas unterstützt. Es gewährleistet die Zuverlässigkeit und Konsistenz der Daten und ist damit eine wichtige Komponente der Lakehouse-Architektur. Delta Lake ermöglicht eine effiziente Datenerfassung, -verarbeitung und -abfrage und bietet eine robuste Grundlage für das Lakehouse.
2) Unity Catalog: Unity Catalog ist eine einheitliche Verwaltungslösung für Daten und KI. Es bietet fein abgestufte Zugriffskontroll-, Datendescent- und Auditing-Funktionen, die sicherstellen, dass der Datenzugriff verwaltet und sicher ist. Unity Catalog spielt eine entscheidende Rolle bei der Aufrechterhaltung des Datenmanagements im Lakehouse.
3) Apache Spark: *Azure Databricks* basiert auf Apache Spark, einer leistungsstarken Anwendung, die hochgradig skalierbares Computing ermöglicht. Die Funktionen von Apache Spark sind für die Verarbeitung großer Datenmengen und die Durchführung komplexer Analyseaufgaben im Lakehouse unerlässlich.

## Vorteile des Erstellens eines Lakehouse mit *Azure Databricks*

1) Einheitliche Datenplattform: Die Lakehouse-Architektur bietet eine einzige Quelle der Wahrheit für alle Daten, eliminiert redundante Systeme und stellt die Aktualität der Daten sicher. *Azure Databricks* unterstützt diese einheitliche Plattform, indem es unterschiedliche Datenquellen integriert und Workloads nahtlos verarbeitet.
2) Skalierbarkeit und Leistung: *Azure Databricks* bietet eine native Integration in Azure-Dienste und bietet so regionale Verfügbarkeit und Leistungsoptimierung. Dadurch wird sichergestellt, dass das Seehaus skaliert werden kann, um den Anforderungen moderner Datenanalysen gerecht zu werden.
3) Datengovernance und -sicherheit: Mit Unity Catalog stellt *Azure Databricks* sicher, dass Datengovernance und -sicherheit im gesamten Lakehouse aufrechterhalten werden. Granulare Zugriffskontroll- und Datenherkunftsfunktionen tragen zum Schutz sensibler Daten bei und erfüllen gesetzliche Anforderungen.

## Integrationsmöglichkeiten

*Azure Databricks* lässt sich in verschiedene Azure-Dienste integrieren und erweitert so die Funktionen der Lakehouse-Architektur. Zu den bemerkenswerten Integrationen gehören:

1) Azure Synapse: *Azure Databricks* lässt sich nahtlos in Azure Synapse integrieren und ermöglicht erweiterte Analyse- und Data-Warehousing-Funktionen. Diese Integration ermöglicht eine effiziente Datenverschiebung und -verarbeitung zwischen dem Seehaus und Synapse.
2) Microsoft Fabric: Mit der Einführung von Microsoft Fabric können *Azure Databricks*-Kunden ihre Analysesysteme mit generativer KI auf demselben offenen und verwalteten Lakehouse erweitern. Diese Integration reduziert die Fragmentierung des Datenbestands und verbessert die Analysefunktionen.
3) Azure Data Factory: *Azure Databricks* kann auch mit Azure Data Factory verwendet werden, von wo aus *Azure Databricks*-Notebooks mit den "eigenen" Prozessen von Azure Data Factory verwendet werden können.

## Fazit

*Azure Databricks* ist ein leistungsstarkes Tool, das den Aufbau einer Lakehouse-Architektur unterstützt, indem es skalierbaren Speicher, effizientes Computing und robuste Datengovernance bereitstellt. Die Integration mit verschiedenen Azure-Diensten verbessert die Fähigkeiten von Lakehouse weiter und macht es zu einer umfassenden Lösung für modernes Datenmanagement und -analysen. Durch die Nutzung von *Azure Databricks* können Organisationen eine einheitliche, skalierbare und sichere Datenplattform aufbauen, die ihre Analyseanforderungen erfüllt und den Geschäftserfolg fördert.



[![en](https://img.shields.io/badge/lang-en-red.svg)](Databricks.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](Databricks-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Databricks-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../../README.md)