![microsoft](../images/microsoft.png)

# En data platform - Data model

[![en](https://img.shields.io/badge/lang-en-blue.svg)](DataModel.md)
[![dk](https://img.shields.io/badge/lang-dk-red.svg)](DataModel-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](DataModel-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Indledning

Datamodellering er et kritisk aspekt af datastyring og databasedesign, der fungerer som planen for strukturering og organisering af data. Det omfatter forskellige teknikker og metoder
der hjælper med at registrere og repræsentere datakrav og forretningsprocesser.

## Forståelse af datamodellering
Datamodellering er processen med at definere og analysere datakrav, der er nødvendige for at understøtte forretningsprocesserne i en organisation. Dette indebærer at skabe diagrammer og modeller, der viser relationerne mellem forskellige dataelementer. Disse modeller tjener som en guide til oprettelse af databaser og andre datarelaterede systemer.

## Typer af datamodeller
Der findes flere typer datamodeller, der hver især tjener et bestemt formål i datalivscyklussen:
1) Konceptuelle datamodeller: Disse modeller er repræsentationer på højt niveau af organisatoriske data med fokus på enhederne og deres relationer. De bruges til at forstå og dokumentere datakravene på et strategisk niveau.
2) Logiske datamodeller: Disse modeller giver en mere detaljeret visning af dataene, herunder attributter og nøgler for hver enhed. De bruges til at kortlægge strukturen af dataene uden at tage hensyn til de fysiske aspekter af lagring.
3) Fysiske datamodeller: Disse modeller oversætter den logiske datamodel til en fysisk struktur, der specificerer, hvordan dataene vil blive gemt i databasen. De indeholder detaljer som tabeller, kolonner, indekser og begrænsninger.

## Datamodelleringsteknikker

Der anvendes flere teknikker i datamodellering for at sikre nøjagtig og effektiv repræsentation af data:

1) Entity-Relationship (ER) modellering: Denne teknik involverer identifikation af enheder, deres attributter og relationer. ER-diagrammer er et almindeligt værktøj, der bruges i denne teknik.
2) Normalisering: Denne teknik bruges til at organisere data for at reducere redundans og forbedre dataintegriteten. Det involverer at opdele store borde i mindre, mere overskuelige stykker.
3) Dimensionel modellering: Denne teknik, der primært bruges i datalagring, involverer oprettelse af fakta- og dimensionstabeller til at understøtte analytiske forespørgsler.

## Datamodellering i Dataplatformen

Udover de ovennævnte teknikker introducerer Dataplatformen et par ekstra aspekter af datamodellering, som ikke hører til de generelle aspekter af datamodellering.

Figur 1 viser disse datamodeller i Dataplatformen.

![Figur1](../images/danish/Slide13.png)

### Tabel model

I **ingest area**  introduceres  en datamodel kaldet *tabelmodel*. Denne model beskriver, hvad vi har aftalt, at en given indtagelsesstrøm leverer. Og derfor denne model
kan bruges til at kontrollere, om dataene fra en tilsvarende proces er som forventet. Det kan også give bevis for nye "kolonner" i de data, der modtages, så dette kan
håndteres passende.

Selve dataene ændres ikke på nogen måde, men kan parkeres i et *godt* og *dårligt* registreringsområde baseret på enten forkert indhold i forhold til, hvad der var forventet eller 
En fejlbehæftet registrering baseret på f.eks. manglende data.

Denne model vedligeholdes af *data engineers*.

### Justeret datamodel

I **transformation area** kaldes den oprettede model *justeret datamodel*. Denne model repræsenterer en mere traditionel ER-datamodel, men med den store forskel, at datamodellen
implementerer ikke relationerne. De er beskrevet, men håndhæves ikke. De tabeller, der beskrives i dette område, er "korrekte poster", hvor enhederne og attributterne er justeret med
overordnede regler som datatype, datoformater, beskrivelser, nøgler, fremmede nøgler, decimalpræcision osv. Resultatet skal være strukturer, der meget let kan forenes for at danne 
datasættene i **publish area**.

Denne model vedligeholdes af *data enginees*.

### Dimensionel model

De datamodeller, der findes i **publish area**, er standard *dimensionelle modeller*, hvor data er sammenføjet, og de korrekte kolonner er på plads for at understøtte den givne forretningsopgave.

Denne model vedligeholdes af *designere*

### Dataprodukt

De *dimensionelle modeller* i **publish area** forbedres yderligere i **consume area** og danner dem til *dataprodukter*. Et *dataprodukt* ændrer ikke layoutet af *dimensionel model*
men tilføjer beskrivende oplysninger som *use case*, *dokumentation*, *brugervejledninger* osv.

Disse oplysninger skal vedligeholdes af den virksomhedsejer, der "bestilte" den *dimensionelle model*.

## Fordele ved datamodellering

Datamodellering giver mange fordele, der forbedrer effektiviteten af datastyring:

1) Forbedret datakvalitet: Ved at identificere og eliminere redundans hjælper datamodellering med at opretholde høj datakvalitet.
2) Forbedret kommunikation: Datamodeller giver en klar og standardiseret måde at kommunikere datakrav mellem interessenter på.
3) Bedre databaseydelse: Ved at optimere databasens struktur kan datamodellering forbedre ydeevnen betydeligt.
4) Faciliteret vedligeholdelse: Med veldefinerede datamodeller er det nemmere at vedligeholde og opdatere databaser, efterhånden som forretningsbehovene ændrer sig.

## Anvendelser af datamodellering

Datamodellering anvendes på tværs af forskellige domæner og brancher, hvilket hjælper med design og implementering af robuste datasystemer:

1) Databasedesign: Datamodellering er afgørende for at designe relationsdatabaser og sikre, at de er effektive og skalerbare.
2) Data Warehousing: Dimensionelle modelleringsteknikker anvendes til at skabe datavarehuse, der understøtter business intelligence og analyser.
3) Softwareudvikling: Datamodeller bruges til at definere de datastrukturer, der kræves til softwareapplikationer, hvilket letter problemfri integration og funktionalitet.
4) Forretningsanalyse: Datamodeller hjælper med at forstå forretningsprocesser og krav, hvilket fører til bedre beslutningstagning og strategisk planlægning.

## Udfordringer i datamodellering

På trods af fordelene står datamodellering over for flere udfordringer, der skal løses:

1) Kompleksitet: Datamodellering kan blive kompleks, især i store organisationer med store mængder data.
2) Skiftende krav: Forretningskrav ændrer sig ofte, hvilket nødvendiggør hyppige opdateringer af datamodeller.
3) Integration: Integration af data fra flere kilder kan være udfordrende, hvilket kræver robuste datamodelleringsteknikker.
4) Valg af værktøj: Det kan være svært at vælge de rigtige værktøjer og teknologier til datamodellering i betragtning af de mange muligheder, der er tilgængelige.

## Konklusion

Datamodellering er en uundværlig del af datastyring, der giver en struktureret tilgang til organisering og styring af data. Ved at forstå typerne, teknikkerne, fordelene og anvendelserne af datamodellering kan organisationer skabe robuste datasystemer, der understøtter deres forretningsprocesser og strategiske mål. På trods af udfordringerne opvejer fordelene ved datamodellering langt ulemperne, hvilket gør det til en nøglekomponent i vellykkede datastyringsstrategier.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](DataModel.md)
[![dk](https://img.shields.io/badge/lang-dk-red.svg)](DataModel-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](DataModel-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)