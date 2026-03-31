![microsoft](../../images/microsoft.png)

# Eine Datenplattform - Code beispiele für Azure

[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README-de.md#beispiel-für-eine-implementierungen)

## Einleitung

Die folgenden Dateien sind Beispiele dafür, wie eine Datenplattform eingerichtet werden kann.

Diese Beispiele dienen als **Inspiration** und erfordern daher Anpassungen, um zur jeweiligen Umgebung zu passen.

>[!Note]
>Der Code wurde nur in meiner eigenen Demo-Umgebung ausprobiert und daher gibt es keine Garantie dafür, dass er überall funktioniert!!!!! 

## Beispiele

Erstellung einer Datenplattform, die der Medallion-Architektur folgt.

### Azure mit Data Factory im bronze und Data Factory Data Flow im silber.

|Aufgabe|Code|
|-----|------| 
|Init|[init **shell** script](./azure/init-project.sh)|
|Create|[**terraform** resources generate script](./azure/gen_resources.tf)|
|Delete|[delete **shell** script](./azure/destroy_resources.sh)|

### Azure mit Data Factory im bronze und Azure Databricks im silber.

|Aufgabe|Code|
|-----|------| 
|Init|[init **shell** script](./Databricks/init-project.sh)|
|Create|[**terraform** resources generate script](./Databricks/gen_resources.tf)|
|Delete|[delete **shell** script](./Databricks/destroy_resources.sh)|

### Azure mit Synapse im bronze und silber

|Aufgabe|Code|
|-----|------| 
|Init|[init **shell** script](./Synapse/init-project.sh)|
|Create|[**terraform** resources generate script](./Synapse/gen_resources.tf)|
|Delete|[delete **shell** script](./Synapse/destroy_resources.sh)|

[![en](https://img.shields.io/badge/lang-en-blue.svg)](code-examples.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](code-examples-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](code-examples-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README-de.md#beispiel-für-eine-implementierungen)