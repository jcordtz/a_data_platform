# En data platform - Sikkerhed "Under construction"

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)


![Sikkerhed](../images/tiger.png) ![microsoft](../images/microsoft.png)

## Indledning

Dette afsnit fokuserer på det "blot" sikkerhedsaspekt om, hvordan data håndteres. Den dækker de udfordringer, der skal løses, samt nogle tanker om, hvordan man håndterer dem.

Denne del handler også meget om processer og dermed fremhæver, at du ikke kan løse datasikkerheden ved "bare at klikke på nogle bokse i dine IT-systemer".

Med hensyn til anvendelsesområde er dette afsnit i overensstemmelse med det overordnede dataplatformsdokument og beskriver derfor (endnu) ikke andre aspekter af datasikkerhed end det, der understøtter dette.

Jeg tror, at de fleste mekanismer er brugbare til andre former for data - herunder også "slutbruger" dokumenthåndtering som Microsoft OneDrive.

## Typer af trusler

Før vi ser på, hvordan data kan beskyttes, skal vi have en forståelse af, hvad vi beskytter mod.

Her er en liste over almindelige typer trusler, der kan bruges mod vores dataejendom. Denne liste er "kopieret i overskrifter" fra
denne Wikipedia-artikel - <https://en.wikipedia.org/wiki/Computer_security>, hvor meget mere detaljeret information kan findes.

### Bagdør

En bagdør i et computersystem, et kryptosystem eller en algoritme er enhver hemmelig metode til at omgå normal autentificering eller sikkerhedskontrol.

### Denial-of-service-angreb

Denial-of-service-angreb (DoS) er designet til at gøre en maskine eller netværksressource utilgængelig for de tilsigtede brugere.

### Fysiske adgangsangreb

Et angreb med direkte adgang er, når en uautoriseret bruger (en angriber) får fysisk adgang til en computer, der højst sandsynligt kopierer data direkte fra den
eller stjæle oplysninger. Angribere kan også kompromittere sikkerheden ved at foretage ændringer af operativsystemet, installere softwareorme, keyloggere,
skjulte lytteenheder eller brug af trådløse mikrofoner.

### Aflytning

Aflytning er handlingen med at lytte til en privat computersamtale (kommunikation), normalt mellem værter på et netværk. Det sker typisk, når en bruger opretter forbindelse til et netværk, hvor trafikken ikke er sikret eller krypteret, og sender følsomme forretningsdata til en kollega, som, når de lyttes til af en angriber, kan udnyttes.
Data, der overføres over et åbent netværk, gør det muligt for en angriber at udnytte en sårbarhed og opsnappe den via forskellige metoder.

### Malware

Ondsindet software (malware) er enhver softwarekode eller computerprogram, der er "bevidst skrevet for at skade et computersystem eller dets brugere".

### Man-in-the-middle-angreb

Man-in-the-middle-angreb (MITM) involverer en ondsindet angriber, der forsøger at opsnappe, overvåge eller ændre kommunikation mellem to parter ved at forfalske den ene eller begge parters identiteter og injicere sig selv ind imellem.

### Phishing

Phishing er forsøget på at skaffe følsomme oplysninger såsom brugernavne, adgangskoder og kreditkortoplysninger direkte fra brugere ved at bedrage brugerne.

### Eskalering af privilegier

Rettighedsforøgelse beskriver en situation, hvor en hacker med en vis grad af begrænset adgang uden tilladelse er i stand til at 
hæve deres privilegier eller adgangsniveau.

### Angreb på sidekanalen

Ethvert beregningssystem påvirker sit miljø i en eller anden form. Denne effekt, den har på sit miljø, kan variere fra elektromagnetisk stråling til resteffekt
på RAM-celler, der som følge heraf gør et Cold boot-angreb muligt, til hardwareimplementeringsfejl, der giver mulighed for adgang eller gæt af andre værdier, der
normalt være utilgængelige.

### Social engineering

Social engineering har i forbindelse med computersikkerhed til formål at overbevise en bruger om at afsløre hemmeligheder såsom adgangskoder, kortnumre osv. eller give fysisk adgang ved for eksempel at udgive sig for at være en ledende medarbejder, bank, en entreprenør eller en kunde. [34] Dette indebærer generelt at udnytte folks tillid og stole på deres kognitive bias. En almindelig fidus involverer e-mails sendt til regnskabs- og økonomiafdelingspersonale, der udgiver sig for at være deres administrerende direktør og hurtigst muligt anmoder om handling. En af de vigtigste teknikker inden for social engineering er phishing-angreb.

### Spoofing

Spoofing er en handling, hvor man udgiver sig for at være en gyldig enhed gennem forfalskning af data (såsom en IP-adresse eller brugernavn) for at få adgang til oplysninger eller ressourcer, som man ellers er uautoriseret til at få. Spoofing er tæt forbundet med phishing.

### Manipulation

Manipulation beskriver en ondsindet ændring eller ændring af data. Det er en forsætlig, men uautoriseret handling, der resulterer i ændring af et system, komponenter i systemer, dets tilsigtede adfærd eller data. Såkaldte Evil Maid-angreb og sikkerhedstjenester, der planter overvågningskapacitet i routere, er eksempler.

### HTML-smugling

HTML-smugling gør det muligt for en angriber at smugle en ondsindet kode ind i en bestemt HTML eller webside. HTML-filer kan indeholde nyttedata, der er skjult som godartede, inaktive data for at besejre indholdsfiltre. Disse nyttelaster kan rekonstrueres på den anden side af filteret.

## Data og sikkerhed

Datasikkerhed er et afgørende aspekt af enhver organisations drift. Det involverer at beskytte følsomme oplysninger mod uautoriseret adgang, korruption eller tyveri gennem hele dens livscyklus.
Ved at implementere stærke *data*-sikkerhedsforanstaltninger kan organisationer hjælpe med at beskytte deres værdifulde aktiver, opfylde relevante krav til overholdelse af angivne standarder og bevare kundernes tillid til brugen af data.

Datasikkerhed er vigtig, fordi det hjælper organisationer med at beskytte sig mod cyberangreb, insidertrusler og menneskelige fejl, som alle kan føre til databrud. De fire centrale spørgsmål inden for data
Sikkerhed er fortrolighed, integritet, tilgængelighed og overholdelse. Da data i stigende grad er målet for angribere, har organisationer brug for sikkerhed på tidspunktet for *data* for at holde data sikre og
være i stand til at gendanne det hurtigere. Målet med datasikkerhed er at gøre dine data så modstandsdygtige som muligt over for enhver form for misbrug, som er angreb, fejl osv.

Sammenfattende er datasikkerhed afgørende for at opretholde fortroligheden, integriteten og tilgængeligheden af en organisations data. Det hjælper med at beskytte værdifulde aktiver og overholde regler og standarder
krav og opretholde kundernes tillid.

## Lovgivning

På et politisk/lovgivningsmæssigt plan er der sket en masse meget godt arbejde (synes jeg) i løbet af de sidste år for at skitsere og opstille krav (love) 
om, hvad vi skal gøre for at beskytte vores dataaktiver. Og dermed beskytte vores kunder, borgere og os selv som individer.

Dette dokument vil bruge de tre EU-direktiver NIS2, EU AI Act og GDPR og de amerikanske HIPAA-regler som eksempler på lovgivning, der implementeres.

1) GDPR bruges, fordi den beskriver, hvad du kan gøre med personoplysninger, og dermed hvordan du skal håndtere personlige værdifulde data (PII).
2) NIS2 bruges, fordi det fortæller, hvad man skal gøre, hvis tingene går galt, og hvad der skal overvejes for at forsøge at undgå dette.
3) HIPAA bruges, fordi det fokuserer på sundhedsoplysninger og faktisk er tre love i én. Den består af reglen om beskyttelse af privatlivets fred, sikkerhedsreglen og 
reglen om anmeldelse af brud på datasikkerheden.
4) EU's forordning om kunstig intelligens (EU AI Act) er en EU-forordning om kunstig intelligens

### GDPR

Denne forordning fastsætter regler om beskyttelse af *fysiske personer* i forbindelse med behandling af **personoplysninger** og
regler om fri udveksling af personoplysninger.

Denne forordning beskytter fysiske personers grundlæggende rettigheder og frihedsrettigheder og navnlig deres ret til beskyttelse af personoplysninger.
Og GDPR siger, at den frie udveksling af personoplysninger inden for EU hverken skal begrænses eller forbydes af årsager
beskyttelse af fysiske personer i forbindelse med behandling af personoplysninger.

Så dette direktiv beskytter enkeltpersoners data mod misbrug. Et af hovedformålene med GDPR-direktivet er, at data skal **klassificeres**.

Henvisning: <https://gdpr-info.eu/art-1-gdpr>

### NIS2

NIS2-direktivet (EU-direktiv 2022/2555) er en lovgivningsmæssig ramme, der er designet til at forbedre cybersikkerheden i hele Den Europæiske Union ved at 
etablering af et højt fælles sikkerhedsniveau for net- og informationssystemer.

Det bygger på det oprindelige NIS-direktiv og udvider dets anvendelsesområde og skærper kravene for bedre at kunne håndtere nye cybertrusler.

I henhold til NIS2 skal væsentlige og vigtige enheder vedtage passende, forholdsmæssige tekniske, operationelle og organisatoriske foranstaltninger til at styre 
cybersikkerhedsrisici.

Disse foranstaltninger har til formål at beskytte netværks- og informationssystemer samt at forhindre eller minimere virkningen af hændelser på tjenesten 
modtagere og sammenkoblede tjenester.

Direktivet kræver en tilgang til "alle farer", hvilket betyder, at enheder skal være parate til at håndtere en bred vifte af trusler, fra cyber 
angreb på fysiske forstyrrelser, hvilket sikrer omfattende beskyttelse

### HIPAA

* Privatlivsreglen: HIPAA-reglen om beskyttelse af personlige oplysninger fastlægger nationale standarder for at beskytte enkeltpersoners lægejournaler og andre individuelt identificerbare helbredsoplysninger (samlet defineret som "beskyttede helbredsoplysninger") og gælder for sundhedsplaner, clearingcentre for sundhedsvæsenet og de sundhedsudbydere, der udfører visse sundhedstransaktioner elektronisk.  
* Sikkerhedsreglen: HIPAA-sikkerhedsreglen etablerer nationale standarder for at beskytte enkeltpersoners elektroniske personlige sundhedsoplysninger, der oprettes, modtages, bruges eller vedligeholdes af en omfattet enhed. Sikkerhedsreglen kræver passende administrative, fysiske og tekniske sikkerhedsforanstaltninger for at sikre fortroligheden, integriteten og sikkerheden af elektronisk beskyttede sundhedsoplysninger. 
* Meddelelser om brud på datasikkerheden: Reglen om meddelelse om brud kræver, at omfattede enheder og forretningsforbindelser underretter berørte personer, HHS og i nogle tilfælde medierne om et brud på usikret PHI.

HIPAA er i kraft sammen med andre regler/love, så data vil leve og skal håndteres under disse forskellige slags regler.

Disse regler er f.eks. Virginia Consumer Data Protection Act, Illinois' Biometric Information Privacy Act osv.

Henvisning: <https://www.hhs.gov/hipaa/index.html>

### EU's forordning om kunstig intelligens

EU's forordning om kunstig intelligens (EU AI Act) er en EU-forordning om kunstig intelligens (AI). Den fastlægger en fælles reguleringsmæssig 
og retlige rammer for kunstig intelligens i Den Europæiske Union. Den trådte i kraft den 1. august 2024 med bestemmelser, der træder i kraft gradvist i løbet af de følgende 6-36 måneder.

Den dækker alle typer kunstig intelligens på tværs af en bred vifte af sektorer med undtagelse af AI-systemer, der udelukkende anvendes til militære, nationale sikkerheds-, forsknings- og ikkefaglige formål.

Som et stykke produktregulering giver den ikke enkeltpersoner rettigheder, men regulerer udbydere af AI-systemer og enheder, der anvender AI i en professionel

## Trusler

Når man diskuterer sikkerhed, er det også vigtigt at forstå, hvad det er, vi forsøger at beskytte os mod - hvad er truslerne?

Der er nogle åbenlyse trusler, der følger med udtrykket cybersikkerhed. Vi er nødt til at beskytte data mod trusler udefra.
Disse trusler spænder fra andre, der ønsker at stjæle vores data til eget brug, over "kapring" af data til terrorhandlinger som sletning/destruktion af data.

En anden trussel, vi er nødt til at forstå, er interne trusler.

## Logisk mekanisme

Opdag dit mest værdifulde aktiv, dine data
Sikker konfiguration for at forhindre sofistikerede angreb
Registrer, hvordan brugere interagerer med data, og identificer insiderrisici
Sørg for, at dine data forbliver sikre mod datalækage og dataeksfiltreringsaktiviteter

### Klassifikation

### Mærkning

### Politikker
## Teknisk mekanisme

I figur 4 finder du flere måder at beskytte data på, som er tilgængelige i Azure. Dette adresserer ikke de mere generelle ting som netværkssikkerhed, Multi Factor Authentication osv., som antages at være på plads.

! [Figur 4](.. /images/dansk/Slide8.JPG)

*Figur 4*

**Applikationsbaseret adgangskontrol** – dækker, at en applikation som SAP, Snowflake, Fabric, Dynamics osv. kræver et login og dermed giver den korrekte adgang til de underliggende data, der bruges i applikationen. Ofte er det underliggende datalager en (relationel) database, som tilgås fra programmet ved hjælp af en tjenestekonto.

**Rollebaseret adgangskontrol** – også kendt som RBAC. Dette styrer adgangen til en given ressource, og hvordan den kan bruges. Så populært sagt – kan man komme til lagerkontoen?

**Attributbaseret adgangskontrol** – også kendt som ABAC – giver en ekstra mekanisme til at give adgang ved at foretage et "opslag" i et andet system. Du kan f.eks. muligvis få adgang til en lagerkonto, men det kan være en mappe, der kræver, at du er en del af et bestemt projekt. I dette tilfælde kan du lave et ABAC-"opslag", der kontrollerer dette, før du giver adgang – afhængigt af dette resultat.

**Identitetsbaseret adgangskontrol** – dækker muligheden for, at en given ressource kan tildeles en identitet (blive "et menneske"). Og så sørger du for, at adgang til en given lagerkonto kun gives til dette "menneske", og derfor skal du bruge denne applikation til at komme til dataene.

**Krypteringsbaseret adgangskontrol** – dette er ikke rigtig adgangskontrol, fordi *data*-lageret vil være tilgængeligt, men jeg kan kun læse/bruge *data*, hvis jeg har nøglen til dekryptering. Så det kan (bør) være en del af dit forsvar.

**Fjernelsesbaseret adgangskontrol** – denne fremgangsmåde er kun mulig i **publiceringsområdet**. Denne tilgang bruger det aspekt af **publiceringsområdet**, at et datasætlager kun "lever så længe det bruges", i dette tilfælde "... bruges korrekt". Da denne tilgang kræver evnen til at kunne genskabe et givet *datasæt*-lager, kan dette også bruges som en forsvarsmekanisme. Så hvis et angreb realiseres, er den nemmeste måde at stoppe dette på blot at fjerne den ressource, der er under angreb, hvis der er risiko for tab af *datasæt*.

## Datasikkerhedsoperationer

Ifølge Wikipedia er DataOps en samling af praksisser, processer og teknologier, der kombinerer et holistisk og procesorienteret syn på data med automatisering og metoder fra agil softwareudvikling for at forbedre kvalitet, hastighed og samarbejde og fremme en kultur med løbende forbedringer omkring dataanalyse.

Mens DataOps startede som et sæt bedste praksis, har det nu udviklet sig til at blive en ny og særskilt tilgang til dataanalyse. DataOps dækker hele datalivscyklussen fra dataforberedelse til rapportering og anerkender den indbyrdes afhængighed af dataanalyseteamet og informationsteknologioperationer.

I softwareudvikling lægger DevOps vægt på kontinuerlig levering ved at bruge on-demand it-ressourcer og ved at automatisere test og implementering af software. Denne måde at udvikle software og it-drift på har forbedret hastigheden, kvaliteten, forudsigeligheden og omfanget af softwareudvikling og implementering.

Ved at tage metoder fra DevOps sigter DataOps mod at bringe de samme forbedringer til dataanalyse. DataOps bør ikke knyttes til en bestemt teknologi, arkitektur, værktøj, sprog eller ramme.
