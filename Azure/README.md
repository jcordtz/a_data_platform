# Azure services based.

Implementing the data platform using Azure services results in a very flexible and agile approach. This will fulfill all topics listed in the chapter “Overall paradigm”.

Figure 1 shows the Azure services normally being used in this approach.
 
![figure 1](../images/Slide10.JPG) 

Figure 1

In the **ingest area** you have Azure Event Hub and Real time analytics to handle incoming messages as well as *data* Factory for handling the batch copy process. The storage layer is Azure *data* Lake.
In the **transform area** the process would then be *data* Factory *data* Flow and the storage layer would also be Azure *data* Lake. If you want to create an Enterprise *data* Warehouse this would be handled by Synapse DW.
In the **publish area** you will find different Azure database technologies being the relational databases Azure SQL Database, Azure PostgresDB and Azure MySQL. Also databases like Azure Cosmos DB, Azure Analytical Services and Azure *data* Explorer is candidates along with Azure *data* Lake.
In the **consume area** you will find PowerBI along with Azure Machine Learning and Azure AI studio.