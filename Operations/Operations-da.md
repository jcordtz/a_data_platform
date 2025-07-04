![microsoft](../images/microsoft.png)

# En data platform - Operations

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Operations.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Operations-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Operations-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

I en tid med digital transformation er cloud computing blevet rygraden i moderne it-drift. Selvom cloud'en tilbyder skalerbarhed, fleksibilitet og omkostningseffektivitet, er det fortsat afgørende at sikre **databeskyttelse** og **operationel modstandsdygtighed**. I denne sektion ser vi på nogle af de overvejelser man bør gøre sig i forhold til bedste praksis, strategier og værktøjer til styring af it-drift i cloud'en med fokus på **backup** og **robusthed**.

## Forståelse af cloud-it-drift

Cloud IT-drift omfatter administration af infrastruktur, applikationer og tjenester, der hostes i cloud-miljøer. Disse operationer omfatter:

- **Klargøring og skalering af ressourcer**
- **Overvågning af ydeevne og tilgængelighed**
- **Sikring af sikkerhed og overholdelse**
- **Administration af sikkerhedskopier og genoprettelse efter nedbrud**
- **Automatisering af rutineopgaver**

## Vigtigheden af backup og modstandsdygtighed

### Sikkerhedskopiering
Sikkerhedskopier er afgørende for at beskytte data mod utilsigtet sletning, korruption, ransomware og systemfejl. I skyen skal sikkerhedskopier være:

- **Automatiseret**: Planlagt og politikstyret
- **Redundant**: Gemt på tværs af flere placeringer eller områder
- **Sikker**: Krypteret under overførsel og i hvile
- **Kan gendannes**: Kan nemt gendannes med minimal nedetid

Især for dataplatforme med større mængder data bør en backup også overholde:

- **Opdelt**: Det skal være muligt at gendanne data på en måde, så operationer kan begynde, selvom alle data ikke er blevet gendannet
- **Code-aware**: Det skal være muligt at gendanne kode til genskabelse af platformen uden at denne er afhængig af selve dataene.

### Modstandsdygtighed
Modstandsdygtighed refererer til systemets evne til at **modstå og komme sig** efter fejl. Dette omfatter:

- **Høj tilgængelighed (HA)**: Minimering af nedetid gennem redundans
- **Disaster Recovery (DR)**: Hurtig genopretning efter katastrofale hændelser
- **Fejltolerance**: Fortsættelse af driften på trods af komponentfejl

## Backup-strategier i skyen

### Typer af sikkerhedskopier
- **Fuld backup**: En komplet kopi af alle data
- **Inkrementel sikkerhedskopiering**: Kun ændringer siden sidste sikkerhedskopiering
- **Differentiel sikkerhedskopiering**: Ændringer siden sidste fulde sikkerhedskopiering
- **Snapshot Backup**: Billede af et system eller en enhed

### Bedste praksis for sikkerhedskopiering
- **Følg 3-2-1-reglen**: 3 kopier af data, 2 forskellige medier, 1 offsite
- **Brug cloud-native værktøjer**: AWS Backup, Azure Backup, Google Cloud Backup
- **Automatiser opbevaringspolitikker**: Definer, hvor længe sikkerhedskopier opbevares
- **Test gendannes regelmæssigt**: Sørg for, at sikkerhedskopier kan bruges, når det er nødvendigt

## Opbygning af modstandsdygtige cloud-arkitekturer

### Design til fiasko
- Antag, at komponenter vil fejle, og design systemer til at håndtere det med ynde.
- Brug **automatisk skalering** og **justering af belastning** til at fordele arbejdsbelastninger.

### Udrulninger i flere zoner og flere områder
- Udrul programmer på tværs af **tilgængelighedszoner** og **områder** for at undgå enkelte fejlpunkter.

### Brug administrerede tjenester
- Udnyt cloududbydertjenester med indbygget robusthed (f.eks. Amazon RDS, Azure SQL Database).

### Implementer katastrofeberedskabsplaner
- Definer **Mål for gendannelsestid (RTO)** og **Mål for genoprettelsespunkt (RPO)**.
- Brug **pilotlys**, **varm standby** eller **multi-site aktiv-aktiv** DR-strategier.

## Overvågning og automatisering

### Overvågningsværktøjer
- Brug cloudbaserede værktøjer som Amazon CloudWatch, Azure Monitor eller Google Cloud Operations Suite.
- Overvåg målinger som f.eks. oppetid, latenstid, fejlrater og succes med sikkerhedskopiering.

### Automatiseringsværktøjer
- Brug IaC (Infrastructure as Code)**- værktøjer som Terraform eller Microsoft BiCep.
- Automatiser oprettelse, validering og sletning af sikkerhedskopier ved hjælp af scripts eller orkestreringsværktøjer.

## Overvejelser om sikkerhed og overholdelse

- **Krypter sikkerhedskopier** ved hjælp af kundeadministrerede eller udbyderadministrerede nøgler.
- **Kontroller adgang** med IAM-politikker og rollebaseret adgangskontrol (RBAC).
- **Revisionslogfiler** for at spore sikkerhedskopierings- og gendannelsesaktiviteter.
- Sørg for overholdelse af regler som **GDPR**, **HIPAA** eller **ISO 27001**.

## Almindelige faldgruber at undgå

- Afhængig af en enkelt backupplacering
- Tester ikke sikkerhedskopier
- Ignorering af RTO/RPO-krav
- Overvågning af sikkerheden af backupdata
- Manglende opdatering af DR-planer, efterhånden som systemerne udvikler sig

## Konklusion

Effektiv it-drift i skyen kræver en proaktiv tilgang til **backup og robusthed**. Ved at udnytte cloud-native værktøjer, automatisere processer og designe til
fejl kan organisationer sikre forretningskontinuitet, beskytte kritiske data og bevare tilliden hos interessenter.


[![en](https://img.shields.io/badge/lang-en-blue.svg)](Operations.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Operations-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Operations-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)