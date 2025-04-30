![microsoft](../images/microsoft.png)

# En data platform - Data Mesh

[![en](https://img.shields.io/badge/lang-en-red.svg)](Data-mesh.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Data-mesh-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Data-mesh-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

## Indledning

I dagens datadrevne verden søger organisationer konstant måder at administrere og udnytte deres data mere effektivt på. Et nyt koncept, der har fået betydelig opmærksomhed, er data mesh. Men hvad er et data mesh egentlig, og hvorfor er det ved at blive et populært valg til moderne dataarkitektur?

Data mesh-arkitekturer har til formål at skabe en mere skalerbar, fleksibel og effektiv måde at administrere data på, hvilket gør det nemmere for organisationer at udnytte deres dataaktiver effektivt.

## Hvad er Data Mesh?

Data mesh er et arkitektonisk mønster, der er designet til at løse udfordringerne ved traditionelle centraliserede datastyringssystemer. Det fremmer en decentraliseret tilgang, hvor dataejerskab og styring distribueres på tværs af forskellige domæner i en organisation. Dette skift giver teams, der er tættest på dataene, mulighed for at administrere og bruge dem, hvilket fremmer smidighed og skalerbarhed.

## Nøgleprincipper for data mesh

1) Domæneejerskab: Data mesh tildeler ejerskab af data til specifikke domæner, f.eks. økonomi, marketing eller drift. Hvert domæne er ansvarligt for at administrere sine data og sikre, at de er nøjagtige, sikre og tilgængelige.
2) Data som et produkt: I et data mesh behandles data som et produkt med klare definitioner, kvalitetsstandarder og livscyklusstyring. Denne tilgang sikrer, at data er pålidelige og værdifulde for forbrugerne.
3) Selvbetjeningsdataplatform: Data mesh giver en selvbetjeningsplatform, der gør det muligt for teams at få adgang til og arbejde med data uafhængigt. Dette reducerer flaskehalse og fremskynder datadrevet beslutningstagning.
4) Samlet styring: Mens dataejerskab er decentraliseret, forbliver styring fødereret. Det betyder, at globale politikker og standarder håndhæves på tværs af alle domæner, hvilket sikrer konsistens og overholdelse.

## Fordele ved Data Mesh

Implementering af et data mesh giver flere fordele:

1) Skalerbarhed: Ved at fordele datastyringsansvar kan organisationer skalere deres dataoperationer mere effektivt.
2) Agilitet: Teams kan hurtigt tilpasse sig skiftende forretningsbehov og træffe datadrevne beslutninger uden at vente på centraliseret godkendelse.
3) Forbedret datakvalitet: Domænespecifikt ejerskab sikrer, at data vedligeholdes af dem, der forstår dem bedst, hvilket fører til højere kvalitet og nøjagtighed.
4) Forbedret samarbejde: Data mesh fremmer samarbejde mellem it- og forretningsteams og tilpasser datainitiativer til organisatoriske mål.

Datamesh-arkitekturer er designet til at løse udfordringerne ved at administrere data i stor skala i store og komplekse organisationer. Her er de vigtigste typer og principper for datamaskearkitekturer:

## Typer af data mesh arkitekturer

Data mesh kan implementeres på forskellige måder. Her er nogle af dem

1) **Domæneorienteret decentraliseret dataejerskab og arkitektur**

    - **Beskrivelse**: Dette princip indebærer decentralisering af dataejerskab til domæneteams, som er ansvarlige for deres egne data. Hvert domæneteam administrerer sine data som et produkt, hvilket sikrer, at de er af høj kvalitet, veldokumenterede og let tilgængelige.
    - **Fordele**: Det reducerer flaskehalse og giver domæneeksperter mulighed for at håndtere data mere effektivt.

2) **Data som et produkt**

    - **Beskrivelse**: Data behandles som et produkt med sin egen livscyklus, herunder udvikling, vedligeholdelse og forbedring. Hvert dataprodukt er designet til at være synligt, adresserbart og troværdigt.
    - **Fordele**: Denne tilgang sikrer, at data er pålidelige og kan bruges trygt på tværs af organisationen.

3) **Selvbetjeningsdatainfrastruktur som platform**

    - **Beskrivelse**: Dette princip giver domæneteams de værktøjer og den infrastruktur, de har brug for til at administrere deres data uafhængigt. Det omfatter værktøjer til datalagring, behandling og styring, der er nemme at bruge og integrere.
    - **Fordele**: Det giver teams mulighed for at arbejde selvstændigt og reducerer afhængigheden af centraliserede it-teams.

4) **Federated Computational Governance**

    - **Beskrivelse**: Styringspolitikker er integreret i data mesh, hvilket giver mulighed for decentraliseret kontrol, samtidig med at globale standarder opretholdes. Dette sikrer overholdelse og konsistens på tværs af alle dataprodukter.
    - **Fordele**: Det balancerer behovet for kontrol med den fleksibilitet, der kræves til innovation.

### Logiske arkitekturkomponenter

- **Domæneejerskab**: Hvert domæne har sine egne data og beregningsressourcer.
- **Dataprodukt**: Dataprodukter er kerneenhederne i arkitekturen, designet til at være selvstændige og genanvendelige.
- **Selvbetjeningsplatform**: En dataplatform med flere planer, der understøtter forskellige dataoperationer.
- **Federated Governance**: Politikker og standarder er integreret i nettet

## Applikationer i den virkelige verden

Mange organisationer har med succes indført data mesh til at transformere deres dataarkitektur. For eksempel demokratiserede OBOS, Norges førende boligbyggefirma, sin dataanalyse ved hjælp af Fabric med et datamesh-design. Dette gjorde det muligt for OBOS at implementere samlet styring og styrke forretningsteams med selvbetjeningsarbejdsområder, hvilket forbedrede virksomhedens ydeevne og reducerede driftsomkostningerne.

## Data Mesh og dataplatformen

I den beskrevne dataplatform etableres data mesh normalt "ovenpå" dataplatformen. Data mesh oprettes derfor i eller efter *publiceringslaget*. Det betyder så, at dataplatformen fungerer som det sted, hvor dataoverensstemmelse og -kvalitet håndteres, hvilket gør data mesh i stand til at understøtte forretningsbehovene præcis, hvordan og hvor der er brug for det.  

## Konklusion

Data mesh repræsenterer et betydeligt skift i, hvordan organisationer griber datastyring an. Ved at decentralisere ejerskab og styring tilbyder det en skalerbar, smidig og samarbejdsramme, der kan skabe bedre dataudnyttelse og forretningsresultater. Efterhånden som flere organisationer anerkender fordelene ved data mesh, er det klar til at blive en hjørnesten i moderne dataarkitektur.

[![en](https://img.shields.io/badge/lang-en-red.svg)](Data-mesh.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Data-mesh-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Data-mesh-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)