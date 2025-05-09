![microsoft](../../images/microsoft.png)

# A Data Platform - Azure services based

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Azure.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Azure-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Azure-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)

Implementing the data platform using Azure services results in a very flexible and agile approach. This will fulfill all topics listed in the chapter “Overall paradigm”.

Figure 1 shows the Azure services normally seen being used in this approach.

![figure 1](../../images/english/Slide5.JPG)

Figure 1

In the **ingest area** you have *Azure Event Hub* and *Azure Real time analytics* to handle incoming messages as well as *Azure Data Factory* for handling the batch copy process. The storage layer is *Azure Data Lake*.

In the **transform area** the process would then be handled by *Azure Data Factory Data Flow* (alt. *Azure Databricks*) and the storage layer would also be *Azure Data Lake*. If you want to create an *Enterprise Data Warehouse* this could be handled by *Synapse DW*.

In the **publish area** you will find different *Azure database* technologies being the relational databases *Azure SQL Database*, *Azure PostgresDB* and *Azure MySQL*. Also databases like *Azure Cosmos DB*, *Azure Analytical Services* and *Azure Data Explorer* are candidates along with *Azure Data Lake*.

In the **consume area** you will find *PowerBI/Fabric* along with *Azure Machine Learning Studio* and *Azure AI Foundry*.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Azure.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Azure-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Azure-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)