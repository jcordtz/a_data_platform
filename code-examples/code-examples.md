![microsoft](../images/microsoft.png)

# A data platform - Code examples using Azure

[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md#example-of-an-implementation)

## Introduction

The following files are examples of how a data platform can be set up.

These examples are provided as **inspiration** and therefore require adjustments to fit the specific environment.

>[!Note]
>The code has **only** been tried out in my own demo environment. So, their is no guarantee that it will work!!!!!!!

## Examples

### Azure with Data Factory in bronze layer and Data Factory Data Flow in silver layer

|Task|Code|
|-----|------|
|Init|[init **shell** script](./azure/init-project.sh)|
|Create|[**terraform** resources generate script](./azure/gen_resources.tf)|
|Delete|[delete **shell** script](./azure/destroy_resources.sh)|

### Azure with Data Factory in bronze layer and Azure Databricks in silver layer

|Task|Code|
|-----|------| 
|Init|[init **shell** script](./Databricks/init-project.sh)|
|Create|[**terraform** resources generate script](./Databricks/gen_resources.tf)|
|Delete|[delete **shell** script](./Databricks/destroy_resources.sh)|

### Azure with Synapse in bronze and silver

|Task|Code|
|-----|------| 
|Init|[init **shell** script](./Synapse/init-project.sh)|
|Create|[**terraform** resources generate script](./Synapse/gen_resources.tf)|
|Delete|[delete **shell** script](./Synapse/destroy_resources.sh)|


[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md#example-of-an-implementation)