![microsoft](../images/microsoft.png)

# Eine Dattenplattform - GenAI mit dem Dattenplattform

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

> *"Bei der kontrollierten GenKI geht es nicht darum, die Intelligenz einzuschränken. Es geht darum, sie verantwortungsvoll zu kanalisieren." *

## Der Funke

In einem Büro mit Blick auf das Meer starrte Louise, Datenarchitektin bei einem globalen Unternehmen, auf den blinkenden Cursor auf ihrem Bildschirm. Ihr Team hatte gerade grünes Licht für die Integration von generativer KI in seine Abläufe erhalten – allerdings mit einer Einschränkung: **Daten müssen souverän, sicher und konform bleiben**.

Die Herausforderung? Nutzen Sie die Leistungsfähigkeit von GenAI, ohne die Unantastbarkeit ihrer Datenplattform zu gefährden, die auf den in diesem Dokument beschriebenen Prämissen basiert - d. h. auf Governance und Compliance basiert.

## Die Datenplattform - neu interpretiert

Louises Festung war eine **kontrollierte Datenplattform** – eine sichere, kontrollierte Umgebung, in der Datenherkunft, Zugriffskontrolle und Compliance nicht verhandelbar waren. Stellen Sie es sich wie einen digitalen Tresor vor mit:

- **Rollenbasierte Zugriffskontrolle (RBAC)** - um den richtigen Zugriff auf die richtigen Daten im richtigen Zeitrahmen zu gewährleisten.
- **Datenmaskierung und Tokenisierung** - Sicherstellen, dass Sie keine Entwicklung auf Produktionsdaten durchführen
- **Prüfpfade** - dass die Datenplattform prüft, wer was wann gesehen hat.
- **Datenklassifizierung und -verschlagwortung** - dass die Datenplattform "weiß", welche Daten auf besondere Weise zu behandeln sind - wie z.B. DSGVO-Daten.

Die Datenplattform wurde unter Verwendung der in diesem Dokument beschriebenen Prinzipien erstellt, wobei Azure Databricks für die Datenverarbeitung, Microsoft Purview für die Governance und Microsoft Entra ID für die Zugriffssteuerung verwendet wurden. Und diese *Daten* zur Verfügung stehen die *datasets* im Veröffentlichungsbereich.

## Das Orakel kommt

Hier kommt GenAI ins Spiel – ein Orakel der Einblicke, das in der Lage ist, Berichte zusammenzufassen, Code zu generieren und sogar Kundenkommunikation zu entwerfen.

Es war aber auch ein Joker. Unkontrolliert könnte es zu Halluzinationen kommen, sensible Daten preisgeben oder gegen Compliance-Regeln verstoßen.

Also machte Louise den Plan, GenAI in die Mauern der bereits kontrollierten Datenplattform einzubetten.

## Der Integrations-Blueprint

Also musste Louise entscheiden, wie die GenAI-Dienste mit der Datenplattform interagieren sollten. Soll es "nur" als eine weitere Berichtsfunktion angesehen werden oder wird GenAI
Führen Sie neue Disziplinen ein, die behandelt werden müssen.

Und die Antwort lautet: Ja, neue Disziplinen müssen behandelt werden, aufgrund der Large Language Models (LLM) und der Art und Weise, wie sie funktionieren.

### Modellauswahl

Als erstes gilt es, sich zu überlegen, welche Modelle für das Unternehmen verfügbar sein sollen – Azure bietet Zugriff auf über 1800 verschiedene Modelle.

Louise unterteilte die Modelle in 2 Hauptkategorien, diejenigen, die eine Größe haben, dass sie in die Datenplattform implementiert werden können - dies könnten Modelle sein
wie LLaMA 3 oder Mistral. Oft auch als Small Language Models (SLM) bekannt. Und diejenigen, die die "echten" LLMs sind, wie ChatGPT, das so groß ist, dass es mit einer API aufgerufen werden muss.

#### Die SLM-Modelle

Louise entschied sich für eine **private LLM-Bereitstellung** – ein Open-Source-Modell wie LLaMA 3 oder Mistral, das in einem sicheren VNet gehostet wird. Dadurch wurde sichergestellt, dass keine Daten den Perimeter verließen.

Das Paradigma hier ist, dass *"keine API-Aufrufe an die Cloud. Das Modell lebt dort, wo die Daten leben." *

#### Die LLM-Modelle

Hier entschied sich Louise für das OpenAI ChatGpt-Modell 4o und seine verschiedenen Varianten, die auf Azure setzen, um sicherzustellen, dass keine Kundendaten geteilt werden. 

Das Paradigma für diese Modelle ist, dass *"Alle API-Aufrufe über einen privaten Endpunkt laufen"*

#### Datenzugriffsschicht

Um den richtigen Zugang zu den richtigen *Datensätzen* zu gewährleisten, entschied sich Louise, weiterhin den *Veröffentlichungsbereich* als einzigen Punkt zu verwenden, von dem aus die GenAI-Modelle ihre Daten abrufen konnten.

Dieser Ansatz für eine **Datenabstraktionsschicht** stellte sicher, dass die Datenplattform den gleichen Sicherheitsmechanismus durchsetzen konnte, als ob es sich um einen Bericht handeln würde.

Die Herausforderung, vor der Louise steht, besteht darin, dass GenAI oft *nur* nach Dokumenten sucht, die Datenplattform aber dennoch technisch in der Lage ist, *Datensätze* in welcher Form und Gestalt auch immer bereitzustellen
durch das Endbenutzer-Tool.

GenAI konnte dann also nur über diese Schicht auf Daten zugreifen, niemals direkt.

Dieser Ansatz stellt auch sicher, dass die Daten von bekannter (=guter) Qualität sind, da dies Teil der *Verantwortung* ist, die die Datenplattform übernimmt.

## GenAI Prompt Engineering mit Leitplanken

Eingabeaufforderungen wurden mit Vorlagen versehen und bereinigt. Sie verwendete:

- **Filter für prompte Einspritzung**
- **Kontextfenster sind auf nicht sensible Felder beschränkt**
- **Ausgabevalidierung mit Regex und Klassifikatoren**

## Audit und Beobachtbarkeit

Jede GenAI-Interaktion wurde protokolliert:

- Wer hat es veranlasst?
- Auf welche Daten zugegriffen wurde
- Welche Ausgabe wurde generiert?

Dies wurde in eine **SIEM-Pipeline** zur Erkennung von Anomalien eingespeist.

## Entfesselte Anwendungsfälle

Nachdem das Gerüst an Ort und Stelle war, führte Louises Team Anwendungsfälle ein:

- **Automatisierte Berichtszusammenfassung**: GenAI las BI-Dashboards und erstellte Executive Summarys.
- **Codegenerierung für ETL-Pipelines**: Entwickler haben Transformationen in natürlicher Sprache beschrieben; GenAI hat PySpark-Code geschrieben.
- **Erstellung von Kunden-E-Mails**: GenAI generierte DSGVO-konforme Antworten anhand von CRM-Daten – ohne jemals personenbezogene Daten zu sehen.

Jeder Anwendungsfall wurde in eine Sandbox umgewandelt, überwacht und iterativ verbessert.

## Lektionen aus der Praxis

Louise dokumentierte die wichtigsten Lektionen:

- **Klein anfangen**: Pilot mit nicht sensiblen Daten.
- **Human-in-the-Loop**: Überprüfen Sie immer die GenAI-Ergebnisse.
- **Modellabstimmung ist wichtig**: Feinabstimmung von domänenspezifischen Daten für die Genauigkeit.
- **Compliance ist eine Reise**: Arbeiten Sie eng mit Rechts- und Risikoteams zusammen.

## Die Zukunft

Als Louise auf den Horizont blickte, sah sie eine Zukunft, in der GenAI keine Bedrohung für die Data Governance darstellt, sondern ein Partner. Ein Co-Pilot, der Grenzen respektierte, aus dem Kontext lernte und transparent arbeitete.

PS - vielleicht lohnt es sich, darüber nachzudenken, wo die "Person" Louise und das "Layout" dieses Abschnitts eigentlich angefangen haben :zwinker:

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)