![microsoft](../images/microsoft.png)

# Eine Datenplattform - Agentic AI

**Work in Progress. Content is CoPilot generated and currently lacks human editing**

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

# **Einführung**

Agenten, die mit einzelnen Datenbanktabellen verbunden sind, sind spezialisierte Prozesse oder Dienste, die bestimmte Tabellen in einer Datenbank überwachen, verwalten und mit ihnen interagieren. Diese Agenten können Aufgaben automatisieren, Regeln durchsetzen und Echtzeit-Einblicke in Datenänderungen bieten. Sie sind für moderne datengesteuerte Architekturen, in denen Modularität und Intelligenz von entscheidender Bedeutung sind, unerlässlich.

## **Was sind mit Tabellen verbundene Agenten?**

Mit Tabellen verbundene Agents sind:

Automatisierte Entitäten** , die Vorgänge für eine bestimmte Tabelle ausführen.
* **Ereignisgesteuerte** oder **geplante** Prozesse, die auf Datenänderungen reagieren.
* **Integrationspunkte** für externe Systeme, um mit Datenbanktabellen zu interagieren.

### **Häufige Anwendungsfälle**

* Datenvalidierung und -bereinigung.
* Auslösen von Workflows, wenn neue Datensätze eingefügt werden.
* Synchronisieren von Daten mit externen APIs.
* Überwachung von Compliance- und Governance-Regeln.

## **So richten Sie mit Tabellen verbundene Agenten ein**

Die Einrichtung von Agenten umfasst:

1. **Definieren des Geltungsbereichs**
    * Identifizieren Sie die Tabelle und die zu überwachenden Vorgänge (INSERT, UPDATE, DELETE).
    * Bestimmen Sie die erforderliche Geschäftslogik oder Automatisierung.

2. **Wählen Sie den Mechanismus**
    * **Datenbank-Trigger** für die Echtzeit-Ereignisbehandlung.
    * **Middleware-Dienste** für komplexe Logik.
    * **Externe Agenten, die APIs verwenden** für die plattformübergreifende Integration.

3. **Konnektivität einrichten**
    * Verwenden Sie Datenbankanmeldeinformationen mit den geringsten Rechten.
    * Sichere Verbindungen mit SSL/TLS.
    * Implementierung von Authentifizierungstoken für API-basierte Agenten.

### **Beispiel: Metadatengesteuerter Agent**

Ein metadatengesteuerter Agent verwendet Konfigurationstabellen, um zu bestimmen, welche Tabellen und Spalten überwacht werden sollen. Zum Beispiel:

'''sql
CREATE TABLE AgentConfig (
 Tabellenname VARCHAR(100),
 MonitorColumns VARCHAR(500),
 Aktionstyp VARCHAR(50),
 EndpunktURL VARCHAR(200)
);
```

Der Agent liest diese Konfiguration und wendet die Überwachungslogik dynamisch an.

## **Steuern von Tabellenagenten**

Kontrollmechanismen sorgen für einen sicheren und effizienten Betrieb der Agenten:

* **Zutrittskontrolle**
  * Zuweisen von Rollen mit den geringsten Berechtigungen.
  * Verwenden Sie verwaltete Identitäten für Cloud-basierte Agenten.

* **Governance**
  * Führen Sie Überwachungsprotokolle von Agentenaktionen.
  * Wenden Sie Datenklassifizierungsregeln an, um unbefugten Zugriff zu verhindern.

* **Leistungsmanagement**
  * Implementieren Sie eine Drosselung für Tabellen mit hohem Volumen.
  * Verwenden Sie die asynchrone Verarbeitung für umfangreiche Aufgaben.

## **Verwendung von Tabellenagenten**

Zu den praktischen Nutzungsmustern gehören:

* **Durchsetzung der Datenqualität**
  * Validieren Sie eingehende Daten anhand vordefinierter Regeln.
  * Ungültige Einträge automatisch ablehnen oder korrigieren.

* **Workflow-Automatisierung**
  * Lösen Sie nachgelagerte Prozesse aus, wenn neue Datensätze hinzugefügt werden.
  * Beispiel: Benachrichtigen Sie ein CRM-System, wenn ein neuer Kunde erstellt wird.

* **Analytik und Überwachung**
  * Sammeln Sie Metriken zur Tabellennutzung.
  * Erkennen Sie Anomalien in Datenmustern.

### **Beispiel für die Integration**

Verwenden von REST-APIs:

'''Schlag
curl -X POST https://api.myagent.com/process \
-H "Autorisierung: Bearer <Token>" \
-d '{"table":"Kunde","action":"INSERT","data":{"id":123,"name":"Alice"}}'
```

## **Best Practices**

* Halten Sie Agenten modular und zustandslos.
* Verwenden Sie konfigurationsgesteuertes Design für Flexibilität.
* Implementieren Sie eine robuste Fehlerbehandlung und Wiederholungen.
* Kontinuierliche Überwachung des Zustands und der Leistung der Agenten.





[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
