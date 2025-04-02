![microsoft](../../images/microsoft.png)

# Unterstützung von Datendiensten - Common Data Model

[![en](https://img.shields.io/badge/lang-en-red.svg)](CommonDataModel.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](CommonDataModel-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](CommonDataModel-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../../README.md)

## Einleitung

Der Begriff *Common Data Model* wird für jedes standardisierte Datenmodell verwendet, das den Daten- und Informationsaustausch zwischen verschiedenen Anwendungen und Datenquellen ermöglicht. 

*Gemeinsame Datenmodelle* zielen darauf ab, die logische Infrastruktur zu standardisieren, so dass verwandte Anwendungen "mit denselben Daten arbeiten und diese gemeinsam nutzen können".
Eine dünne Organisation ist eine der typischen Aufgaben eines Data Warehouses.

Wenn Sie schon einmal Daten aus mehreren Systemen und Anwendungen zusammenführen mussten, wissen Sie höchstwahrscheinlich, was für eine teure und zeitaufwändige Aufgabe das sein kann.
Ohne die Möglichkeit, dieselben Daten einfach zu teilen und zu verstehen, erfordert jede Anwendung oder jedes Datenintegrationsprojekt eine eigene Implementierung, die höchstwahrscheinlich bereits 
an einem "anderen Ort" in Ihrem Unternehmen etabliert wurden.

## Was ist in einem Common Data Model enthalten?

Ein *Common Data Model* umfasst neben der Dokumentation seiner Struktur und seines Inhalts  eine Reihe von standardisierten und oft erweiterbaren Schemata. Diese Sammlung von Schemas enthält Entitäten,
Attribute, Beschreibungen und Beziehungen. Diese Schemata stellen häufig verwendete Konzepte und Aktivitäten dar, z. B. Kunde, Adresse usw. 
Dieser Ansatz vereinfacht die Erstellung, Aggregation und Analyse von Daten.

## Warum ein Common Data Model verwenden?

Stellen Sie sich vor, Sie haben drei Geschäftsanwendungen.

Einen für Materialien, einen für die Fertigung und einen für den Verkauf. Es ist mit ziemlicher Sicherheit wahrscheinlich, dass jede dieser Anwendungen über eine eigene Darstellung für Assets verfügt, die von allen drei Anwendungen verwendet wird, wie z. B.
den Vermögenswert für ein Konto. Ein solches Asset enthält höchstwahrscheinlich die gleichen Informationen, die jedoch in jeder Anwendung auf unterschiedliche Weise dargestellt werden - Unterschiede wie Spaltennamen, Datentypen und Datenlänge.

Wenn Sie ein *Common Data Model* verwendet hätten, hätten diese Anwendungen ein standardisiertes Format gehabt, auf das für Assets wie ein Konto verwiesen werden kann, und (vielleicht) hätte jede App die gleichen Daten verwenden können.

Jede Anwendung verfügt dann über ihre eigenen zusätzlichen Daten und Schemata, abhängig von ihrer Funktionalität. 

Aber wenn es um die Entwicklung geht, können Ihre Apps und Berichte dann schnell, sauber und zuverlässig gemeinsame Datenelemente abrufen.

Nun, wie ihr wisst, ist das wirklich nicht die Realität. Es gibt einige Initiativen, um solche Modelle für Daten zu erstellen, oft in der "ERP-Welt". Oft (=immer) wird man aber ein *Common Data Model* verwenden müssen
als "Übersetzer" zwischen verschiedenen Systemen. Und in diesem Fall ist es sehr sinnvoll, einige der verfügbaren Industriestandard-Datenmodelle zu verwenden, die es gibt.

Wenn Sie diesen Ansatz verfolgen, wird das Erstellen einer neuen Anwendung, eines Data Marts oder eines Berichts viel standardisierter. Und Ihre Entwicklungsbemühungen können sich auf die Geschäftslogik konzentrieren, anstatt
Streit darüber, wie die Daten transformiert werden sollen *"noch ein anderes Mal"*.

In der Vergangenheit war die Arbeit zum Erstellen einer App eng mit der Datenintegration verbunden, aber mit Common Data Model und den Plattformen, die es unterstützen, können beide unabhängig voneinander erfolgen:

App-Ersteller und/oder -Entwickler: Unabhängig davon, ob diese Benutzer codebasierte Plattformen oder eine Low-Code/No-Code-Plattform wie Power Apps oder Power BI nutzen, müssen sie Daten für ihre Apps speichern und verwalten.

Datenintegratoren: Diese Benutzer sind dafür verantwortlich, Daten aus einer Vielzahl von Systemen zu übertragen, um sie für Apps zugänglich zu machen.

Common Data Model vereinfacht die Datenverwaltung und App-Entwicklung, indem es Daten in einer bekannten Form vereinheitlicht und strukturelle und semantische Konsistenz über mehrere Apps und Bereitstellungen hinweg anwendet. Um die Vorteile zusammenzufassen:

Strukturelle und semantische Konsistenz über Anwendungen und Bereitstellungen hinweg.

Vereinfachte Integration und Begriffsklärung von Daten, die aus Prozessen, digitalen Interaktionen, Produkttelemetrie, Personeninteraktionen usw. gesammelt werden.

Eine einheitliche Form, in der Datenintegrationen vorhandene Unternehmensdaten mit anderen Quellen kombinieren und diese Daten ganzheitlich nutzen können, um Apps zu entwickeln oder Erkenntnisse abzuleiten.

Die Möglichkeit, das Schema und die Common Data Model-Standardentitäten zu erweitern, um das Modell an Ihre Organisation anzupassen.

[![en](https://img.shields.io/badge/lang-en-red.svg)](CommonDataModel.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](CommonDataModel-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](CommonDataModel-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../../README.md)

