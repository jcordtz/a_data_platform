![microsoft](../images/others/microsoft.png)

# En data platform - Eksempler på kode til at danne en data platform i Azure

[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README-da.md#eksempel-på-en-implementering)

## Indledning

Følgende filer er eksempler på hvorledes en data platform kan sættes op.

Disse eksempler er leveret som **inspiration** og kræver derfor tilretninger for at passe det aktuelle miljø.

>[!Note}
>Koden er **kun** forsøgt brugt i mit eget demo miljø og derfor ingen garanti for at virke alle steder!!!!!

## Eksempler

Oprettelse af et data platform der følger medallion arkitekturen.

### Azure med Data Factory i bronze laget og Data Factory Data Flow i sølv laget

|Opgave|Kode|
|-----|------|
|Init|[init **shell** script](./azure/init-project.sh)|
|Create|[**terraform** resources generate script](./azure/gen_resources.tf)|
|Delete|[delete **shell** script](./azure/destroy_resources.sh)|

### Azure med Data Factory i bronze laget og Azure Databricks i sølv laget

|Opgave|Kode|
|-----|------| 
|Init|[init **shell** script](./Databricks/init-project.sh)|
|Create|[**terraform** resources generate script](./Databricks/gen_resources.tf)|
|Delete|[delete **shell** script](./Databricks/destroy_resources.sh)|

### Azure med Synapse i bronze og sølv laget

|Opgave|Kode|
|-----|------| 
|Init|[init **shell** script](./Synapse/init-project.sh)|
|Create|[**terraform** resources generate script](./Synapse/gen_resources.tf)|
|Delete|[delete **shell** script](./Synapse/destroy_resources.sh)|

[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README-da.md#eksempel-på-en-implementering)