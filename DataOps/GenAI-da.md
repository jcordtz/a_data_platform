![microsoft](../images/microsoft.png)

# En data platform - GenAI med data platformen

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

> *"Kontrolleret GenAI handler ikke om at begrænse intelligens. Det handler om at kanalisere det ansvarligt." *

## Gnisten

På et kontor med udsigt over havet stirrede Louise, en dataarkitekt i et globalt firma, på den blinkende markør på sin skærm. Hendes team havde netop fået grønt lys til at integrere generativ AI i deres operationer – men med et forbehold: **data skal forblive suveræne, sikre og kompatible**.

Udfordringen? Udnyt styrken i GenAI uden at gå på kompromis med ukrænkeligheden af deres dataplatform, der er bygget på de forudsætninger, der er beskrevet i dette dokument - det vil sige drevet af styring og overholdelse.

## Dataplatformen - genbesøgt

Louises fæstning var en **kontrolleret dataplatform** - et sikkert, styret miljø, hvor dataafstamning, adgangskontrol og overholdelse ikke var til forhandling. Tænk på det som en digital boks med:

- **Rollebaseret adgangskontrol (RBAC)** - for at sikre den rigtige adgang til de rigtige data inden for den rigtige tidsramme.
- **Datamaskering og tokenisering** - sikrer, at du ikke laver udvikling på produktionsdata
- **Audit trails** - at dataplatformen auditerer, hvem der så hvad og hvornår.
- **Dataklassificering og tagging** - at dataplatformen "ved", hvilke data der skal håndteres på en særlig måde - som GDPR-data.

Dataplatformen blev bygget ved hjælp af de principper, der er beskrevet i dette dokument, med Azure Databricks til databehandling, Microsoft Purview til styring og Microsoft Entra ID til adgangskontrol. Og at *data* , der er tilgængelige til brug, er *datasæt* i publiceringsområdet.

## Oraklet ankommer

Ind kommer GenAI – et orakel af indsigt, der er i stand til at opsummere rapporter, generere kode og endda udarbejde kundekommunikation.

Men det var også et wildcard. Hvis det ikke kontrolleres, kan det hallucinere, lække følsomme data eller overtræde overholdelsesreglerne.

Så Louise lavede en plan om at **integrere GenAI inden for væggene på den allerede kontrollerede dataplatform**.

## Integrationsplanen

Så Louise skulle beslutte, hvordan GenAI-tjenesterne skulle interagere med dataplatformen. Skal det "bare" ses som endnu en rapporteringsmulighed, eller gør GenAI
introducere nye discipliner, der skal håndteres.

Og svaret er ja, nye discipliner skal håndteres på grund af de store sprogmodeller (LLM) og den måde, de fungerer på.

### Valg af model

Det første, du skal overveje, er, hvilke modeller der skal være tilgængelige for virksomheden – Azure giver adgang til over 1800 forskellige modeller.

Louise inddelte modellerne i 2 hovedkategorier, dem der har en størrelse, så de kan implementeres i dataplatformen - det kunne være modeller
som LLaMA 3 eller Mistral. Kaldes ofte Small Language Models (SLM). Og dem, der er de "rigtige" LLM'er, som ChatGPT, som er så stort, at der er behov for at blive kaldt ved hjælp af en API.

#### SLM-modellerne

Louise valgte en **privat LLM-udrulning** – en model med åben kildekode som LLaMA 3 eller Mistral, der hostes i et sikkert VNet. Dette sikrede, at ingen data forlod perimeteren.

Paradigmet her er, at *"Ingen API-kald til skyen. Modellen lever, hvor dataene lever." *

#### LLM-modellerne

Her valgte Louise OpenAI ChatGpt model 4o og dens forskellige varianter, der er afhængige af Azure for at sikre, at ingen kundedata deles. 

Paradigmet for disse modeller er, at *"Alle API-kald går gennem et privat slutpunkt"*

#### Dataadgangslag

For at sikre den rigtige adgang til de rigtige *datasæt* besluttede Louise at fortsætte med at bruge *publiceringsområdet* som det eneste punkt, hvor GenAI-modellerne kunne sætte sine data fra.

Denne tilgang til et **dataabstraktionslag**- lag sikrede, at dataplatformen kunne indføre den samme sikkerhedsmekanisme, som hvis anmodningen var om en rapport.

Udfordringen Louise står over for er, at GenAI ofte *kun* leder  efter dokumenter, men alligevel er dataplatformen teknisk i stand til at levere *datasæt* i den form og form, der er behov for
af slutbrugerværktøjet.

Så GenAI kunne så kun få adgang til data gennem dette lag, aldrig direkte.

Denne tilgang sikrer også, at dataene er af kendt (=god) kvalitet, da dette er en del af den *ansvar*, som dataplatformen håndterer.

## GenAI Prompt Engineering med rækværk

Prompter blev skabeloner og desinficeret. Hun brugte:

- **Filtre til hurtig indsprøjtning**
- **Kontekstvinduer begrænset til ikke-følsomme felter**
- **Outputvalidering ved hjælp af regex og klassificeringer**

## Revision og observerbarhed

Hver GenAI-interaktion blev logget:

- Hvem der foranledigede det
- Hvilke data der blev tilgået
- Hvilket output der blev genereret

Dette blev føjet ind i en **SIEM-pipeline** til registrering af uregelmæssigheder.

## Brugssager sluppet løs

Med stilladset på plads rullede Louises team use cases ud:

- **Automatiseret rapportopsummering**: GenAI læste BI-dashboards og genererede ledelsesresuméer.
- **Kodegenerering til ETL-pipelines**: Udviklere beskrev transformationer i naturligt sprog; GenAI skrev PySpark-kode.
- **Kundemailudkast**: GenAI genererede GDPR-kompatible svar ved hjælp af CRM-data – uden nogensinde at se PII.

Hver use case blev sandboxet, overvåget og iterativt forbedret.

## Lektioner fra marken

Louise dokumenterede vigtige lektioner:

- **Start i det små**: Pilot med ikke-følsomme data.
- **Menneske-i-løkken**: Gennemgå altid GenAI-output.
- **Modeltuning betyder noget**: Finjuster domænespecifikke data for nøjagtighed.
- **Compliance er en rejse**: Arbejd tæt sammen med juridiske teams og risikoteams.

## Fremtiden

Da Louise kiggede ud i horisonten, så hun en fremtid, hvor GenAI ikke var en trussel mod datastyring – men en partner. En co-pilot, der respekterede grænser, lærte af konteksten og opererede med gennemsigtighed.

PS - måske er det værd at tænke over, hvor "personen" Louise og "layoutet" i dette afsnit egentlig startede :wink:

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)