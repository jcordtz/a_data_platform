![microsoft](../images/microsoft.png)

# En data platform - Sikkerhed

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

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

## Exitstrategi og risikovurdering

En af de "mekanismer", der bør adresseres i forbindelse med datasikkerhed, er evnen til at "komme ud", dvs. at etablere og vedligeholde en exitstrategi.
Denne Exit-strategi kan så også bruges som "ankerpunkt" for at have en risikovurdering af den dataplatform, der implementeres.

Disse 2 emner diskuteres yderligere i dette [afsnit](Exit-and-risc-strategies-da.md)

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

Den logiske mekanisme dækker elementer, der har at gøre med den proces, vi skal have på plads for at sikre, at vi kan understøtte de anmodede/krævede sikkerhedsniveauer.

1) Vi skal være i stand til at opdage dataene - det vil sige at kunne lægge mærke til deres placering, hvem der ejer dem, hvilken struktur de har, hvilke miljøer de tilhører (dvs. dev, non-prod, prod) osv.
2) Vi skal også finde ud af, om der er elementer som konfigurationsfiler, scripts (dvs. IaC-programmer osv.) osv., der skal dokumenteres, som (kunne) have indflydelse på vores data.
3) Registrer, hvordan brugere interagerer med data, og identificer potentielle insiderrisici.
4) Etablere processer, der kan sikre, at data forbliver sikre mod datalækage og dataeksfiltreringsaktiviteter.
5) Etabler processer, der sikrer, at vi kan gendanne alle data, der måtte være blevet kompromitteret. Og at vi har processer, der regelmæssigt tester, at denne gendannelse virker.

En lang tid med sådanne processer skal vi også have mekanismer, der kan hjælpe os med at få en forståelse af arten af de pågældende data.

En sådan mekanisme er beskrevet i næste afsnit.

## Mærkning af data

For at sikre, at vi ved, hvilken karakter de data, vi kigger på, har, som om det er produktionsdata eller ikke-produktionsdata, eller er det data, der kan deles uden for vores virksomhed, skal vi være
i stand til at markere data.

### Følsomhed

Vi skal være i stand til at klassificere data i vores organisation, så vi ved, hvilken slags følsomhed de repræsenterer - det vil sige, hvordan må de bruges. Disse følsomheder hjælper med at bestemme
elementer som, hvem der har adgang til disse data, hvor længe kan/har brug for data til at blive opbevaret, og kan vi bruge blød sletning på dem.

Ofte ser vi følsomhedsniveauer som: personlig, offentlig, generel, fortrolig og meget fortrolig. Bemærk – Dette er Office365-standardniveauer.

1) Personlige - Ikke-forretningsmæssige data, kun til personlig brug - som personlige billeder og en telefon.
2) Offentlige - forretningsdata, der er specifikt udarbejdet og godkendt til offentligt forbrug - som en pressemeddelelse.
3) Generelt - Forretningsdata, der ikke er beregnet til offentligt forbrug. Dette kan dog deles med eksterne partnere efter behov. Eksempler omfatter en virksomheds interne telefonbog, organisationsdiagrammer, interne standarder og det meste intern kommunikation.
4) Fortroligt - Følsomme forretningsdata, der kan forårsage skade på virksomheden, hvis de deles med uautoriserede personer. Eksempler omfatter kontrakter, sikkerhedsrapporter, prognoseoversigter og salgskontodata.
5) Meget fortroligt - Meget følsomme forretningsdata, der ville forårsage skade på virksomheden, hvis de blev delt med uautoriserede personer. Eksempler omfatter medarbejder- og kundeoplysninger, adgangskoder, kildekode og forudannoncerede økonomiske rapporter.

### Fælles rammer

Mange rammer og lovbestemmelser har specifikke krav, der tilskynder organisationer til at klassificere data. 
Eksempler på sådanne regler er som flows:

1) SOC 2: SOC 2 Trust Services-kriterierne kræver, at serviceorganisationer, der inkluderer fortrolighedskategorien i deres revision, viser, at de identificerer og opbevarer fortrolige oplysninger for at opfylde enhedens mål vedrørende fortrolighed.
2) HIPAA: PHI betragtes som højrisikodata. Som sådan kræver HIPAA-sikkerhedsregelen, at alle omfattede enheder og forretningsforbindelser implementerer administrative sikkerhedsforanstaltninger, der sikrer fortroligheden, integriteten og tilgængeligheden af PHI. Derudover begrænser HIPAA's privatlivsregel brugen og videregivelsen af PHI, hvilket tvinger både omfattede enheder og forretningsforbindelser til at etablere procedurer for klassificering af de data, de indsamler, bruger, opbevarer eller overfører.
3) PCI: For at overholde PCI DSS-krav 9.6.1 skal enheder "klassificere data, så datafølsomheden af dataene kan bestemmes."
4) GDPR: Organisationer, der håndterer personoplysninger om registrerede i EU, skal klassificere de typer data, de indsamler, for at overholde loven. Derudover kategoriserer GDPR visse data – race, etnisk oprindelse, politiske holdninger, biometriske data og sundhedsdata – som "specielle", og derfor er de underlagt yderligere beskyttelse. Det betyder ikke kun, at organisationer skal vide, hvilke typer data de har, men de skal også være i stand til at mærke sådanne data.

### Klassifikation

Klassifikationer er udtryk eller mønstre, der kan hjælpe med at identificere, hvilken type data der kan findes i en fil eller en kolonne i en tabel.
Eksempler på sådanne klassifikationer er CPR-nummer, kørekortnummer, bankkontonummer osv.

En kombination af klassificering hjælper ofte med at indstille den rigtige følsomhed til en given *data* eller *datasæt* - enten manuelt eller under en scanningsproces.

### Politikker

Politikker hjælper med at håndhæve organisatoriske standarder og vurdere overholdelse og er meget ofte afhængige af en ramme som ISO27xxx, NIST eller CIS18. 

Almindelige brugsscenarier for sådanne politikker omfatter implementering af styring af datakonsistens, overholdelse af lovgivning, sikkerhed og administration. 

I et Azure-miljø er politikdefinitioner allerede tilgængelige for almindelige use cases som indbyggede for at hjælpe dig med at komme i gang.

Nogle nyttige styringshandlinger, du kan gennemtvinge ved hjælp af Azure Policy, er:

1) Sørg for, at dit team kun udruller Azure-ressourcer til tilladte områder, og sørg derfor for, at data kun gemmes på tilladte Azure-placeringer.
2) Gennemtving den konsekvente anvendelse af taksonomiske tags.
3) Kræv ressourcer for at sende diagnosticeringslogge til et Log Analytics-arbejdsområde.

## Teknisk mekanisme

I *figur 1* finder du flere måder at beskytte data på, som er tilgængelige i Azure. Dette adresserer ikke de mere generelle ting som netværkssikkerhed, Multi Factor Authentication osv., som antages at være på plads.

! [Figur 1](.. /images/dansk/Slide8.JPG)

*Figur 1*

**Applikationsbaseret adgangskontrol** – dækker, at en applikation som SAP, Snowflake, Fabric, Dynamics osv. kræver et login og dermed giver den korrekte adgang til de underliggende data, der bruges i applikationen. Ofte er det underliggende datalager en (relationel) database, som tilgås fra programmet ved hjælp af en tjenestekonto.

**Rollebaseret adgangskontrol** – også kendt som RBAC. Dette styrer adgangen til en given ressource, og hvordan den kan bruges. Så populært sagt – kan man komme til lagerkontoen?

**Attributbaseret adgangskontrol** – også kendt som ABAC – giver en ekstra mekanisme til at give adgang ved at foretage et "opslag" i et andet system. Du kan f.eks. muligvis få adgang til en lagerkonto, men det kan være en mappe, der kræver, at du er en del af et bestemt projekt. I dette tilfælde kan du lave et ABAC-"opslag", der kontrollerer dette, før du giver adgang – afhængigt af dette resultat.

**Identitetsbaseret adgangskontrol** – dækker muligheden for, at en given ressource kan tildeles en identitet (blive "et menneske"). Og så sørger du for, at adgang til en given lagerkonto kun gives til dette "menneske", og derfor skal du bruge denne applikation til at komme til dataene.

**Krypteringsbaseret adgangskontrol** – dette er ikke rigtig adgangskontrol, fordi *data*-lageret vil være tilgængeligt, men jeg kan kun læse/bruge *data*, hvis jeg har nøglen til dekryptering. Så det kan (bør) være en del af dit forsvar.

**Fjernelsesbaseret adgangskontrol** – denne fremgangsmåde er kun mulig i **publiceringsområdet**. Denne tilgang bruger det aspekt af **publiceringsområdet**, at et datasætlager kun "lever så længe det bruges", i dette tilfælde "... bruges korrekt". Da denne tilgang kræver evnen til at kunne genskabe et givet *datasæt*-lager, kan dette også bruges som en forsvarsmekanisme. Så hvis et angreb realiseres, er den nemmeste måde at stoppe dette på blot at fjerne den ressource, der er under angreb, hvis der er risiko for tab af *datasæt*.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)