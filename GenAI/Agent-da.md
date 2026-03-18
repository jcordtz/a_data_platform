![microsoft](../images/microsoft.png)

# En data platform - Agentic AI

**Work in Progress. Content is CoPilot generated and currently lacks human editing**

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

# **Indledning**

Agenter, der er forbundet til individuelle databasetabeller, er specialiserede processer eller tjenester, der overvåger, administrerer og interagerer med bestemte tabeller i en database. Disse agenter kan automatisere opgaver, håndhæve regler og give indsigt i dataændringer i realtid. De er afgørende for moderne datadrevne arkitekturer, hvor modularitet og intelligens er nøglen.

## **Hvad er tabelforbundne agenter?**

Table-connected agenter er:

* **Automatiserede enheder** , der udfører handlinger på en angivet tabel.
* **Hændelsesdrevne** eller **planlagte** processer, der reagerer på dataændringer.
* **Integrationspunkter** til eksterne systemer til at interagere med databasetabeller.

### **Almindelige brugssager**

* Datavalidering og rensning.
* Udløser arbejdsprocesser, når der indsættes nye poster.
* Synkronisering af data med eksterne API'er.
* Overvågning af overholdelse og forvaltningsregler.

## **Sådan etablerer du tabelforbundne agenter**

Etablering af agenter indebærer:

1. **Definer omfanget**
    * Identificer tabellen og operationerne (INSERT, UPDATE, DELETE), der skal overvåges.
    * Bestem den nødvendige forretningslogik eller automatisering.

2. **Vælg mekanismen**
    * **Databaseudløsere** til hændelseshåndtering i realtid.
    * **Middleware-tjenester** til kompleks logik.
    * **Eksterne agenter, der bruger API'er** til integration på tværs af platforme.

3. **Konfigurer forbindelse**
    * Brug databaselegitimationsoplysninger med mindst privilegier.
    * Sikre forbindelser med SSL/TLS.
    * Implementer godkendelsestokens for API-baserede agenter.

### **Eksempel: Metadatadrevet agent**

En metadatadrevet helpdesk-medarbejder bruger konfigurationstabeller til at bestemme, hvilke tabeller og kolonner der skal overvåges. For eksempel:

'''SQL
OPRET TABEL AgentConfig (
    Tabelnavn VARCHAR(100),
    MonitorColumns VARCHAR(500),
    ActionType VARCHAR(50),
    EndpointURL VARCHAR(200)
);
```

Helpdesk-medarbejderen læser denne konfiguration og anvender dynamisk overvågningslogik.

## **Sådan styres bordagenter**

Kontrolmekanismer sikrer, at agenter fungerer sikkert og effektivt:

* **Adgangskontrol**
  * Tildel roller med færrest rettigheder.
  * Brug administrerede identiteter til cloudbaserede agenter.

* **Styring**
  * Vedligehold overvågningslogfiler over agenthandlinger.
  * Anvend dataklassificeringsregler for at forhindre uautoriseret adgang.

* **Præstationsstyring**
  * Implementer begrænsning for borde med stor volumen.
  * Brug asynkron behandling til tunge opgaver.

## **Sådan bruger du bordagenter**

Praktiske brugsmønstre omfatter:

* **Håndhævelse af datakvalitet**
  * Valider indgående data i forhold til foruddefinerede regler.
  * Afvis eller ret ugyldige poster automatisk.

* **Automatisering af arbejdsgange**
  * Udløs downstream-processer, når der tilføjes nye poster.
  * Eksempel: Giv et CRM-system besked, når der oprettes en ny kunde.

* **Analyse og overvågning**
  * Indsaml målinger om tabelbrug.
  * Registrer uregelmæssigheder i datamønstre.

### **Eksempel på integration**

Brug af REST API'er:

'''Bash
curl -X POST https://api.myagent.com/process \
-H "Autorisation: Ihændehaver <token>" \
-d '{"table":"Kunde","action":"INSERT","data":{"id":123,"name":"Alice"}}'
```

## **Bedste praksis**

* Hold agenter modulære og statsløse.
* Brug konfigurationsdrevet design for fleksibilitet.
* Implementer robust fejlhåndtering og genforsøg.
* Overvåg agentens tilstand og ydeevne løbende.




[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)