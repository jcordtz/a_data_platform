![microsoft](../images/microsoft.png)

# A data platform - Loading and performance<br>Considerations on what to observe

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Ingesting Data into the data platform based on the Medallion Architecture

### Introduction

The Medallion architecture as described has become a de facto standard for modern data platform and
data warehouse designs - especially in cloud-based environments. The architecture provides a structured, scalable, and
performance-optimized approach for ingesting, refining, and exposing data from source systems to analytical consumers.

This section explains how data should be ingested from a source into a data warehouse using a Medallion
architecture, with particular focus on:

1. Data pipeline design
2. Performance optimization
3. Cloud-native principles
4. Robustness, scalability, and cost control

This section is based on modern cloud platforms like Azure, AWS, or GCP, but the principles are generic and platform-agnostic.

## Overall Architecture Principles

As descibed in the *main document* the Medallion architecture divides the data lifecycle into clearly separated layers:

|Layer|Purpose|
|-----|---------------|
|Bronze|Raw data from source systems – unchanged and complete|
|Silver|Cleaned, standardized, and enriched data|
|Gold|Business-ready, aggregated, and performance-optimized data|

This layered approach supports:

1. Separation of concerns
2. Traceability and governance
3. Optimal performance at each processing stage
4. Cloud scalability

## Overall loading principle

Bulk -> bulk -> detail

## Step 1: Data Ingestion into the Bronze Layer

The Bronze layer acts as the system of record for all ingested data. Data should be stored as close
to the source as possible, both semantically and structurally.

### Design Principles

1. **No/Minimal Transformation**

In the bronze layer data should be stored in its raw format avoiding data type mappings, business rules, and joins. 
This means that you will preserve source columns, field names, and formats.

This ensures reproducibility, easier troubleshooting and the ability to reprocess data when needed.

2. **Incremental Ingestion**

To obtain the best performance and scalability, data should - if possible - be ingested incrementally using:

* CDC (Change Data Capture)
* Watermarks (timestamps or identity columns)
* Event streams (e.g., Kafka, Event Hubs)
* Avoid full reloads, unless data volumes are very small.

3. **Cloud Storage as a Landing Zone**

The Bronze layer should reside in low-cost, elastic object storage, like Azure Data Lake Gen2,
Amazon S3 or Google Cloud Storage in recommended file formats JSON / Avro (event-based sources),
CSV (simple batch sources), Parquet (where supported) and Delta Live Tables

### Performance Optimizations considerations in the Bronze Layer

To achieve as high as possible load speed the following is worth considering:

* Parallel ingestion (partitioned by table, date, or business key)
* Large file sizes (typically 100–1000 MB per file)
* Compression (Snappy, Gzip)
* Partitioning by ingestion time or business attribute
* Avoid sorting and if possible "the where clause" at the source
* Use any available PaaS service in the cloud that is created to optimal load data like Azure Data Factory.
* If possible utilize streaming technologies

The Bronze layer should scale horizontally and is not intended for complex queries.

## Step 2: Transformation into the Silver Layer

The Silver layer represents cleaned, consistent, and technically correct data.

At this stage, the focus shifts from the source system structure to a shared and standardized approach.
The focus is to have data that can be easily combined towards the *end result* in the Gold layer.

To achieve this typical transformations are functions like:

* Data type normalization
* Deduplication
* Null handling
* Referential integrity validation
* Time zone normalization
* Code and reference data harmonization

It is immportant that all transformations are deterministic, version-controlled and Idempotent

### Performance Design in the Silver Layer**

1. **Columnar Storage Formats**
Silver data should be stored using columnar formats such as Parquet, Delta Lake, Iceberg and Hudi.
This enables predicate pushdown, selective column reads and efficient compression.

2. **Partitioning and Clustering**

To achieve the best performance when adressing data in the Silver layer for processing towards the
Gold layer a correct partitioning is critical. The key for this partioning could items like Date (e.g., event_date),
Customer / tenant or Region. Optionally enhanced with Z-ordering or clustering techniques.

Please note that over-partitioning can significantly degrade performance.

3. **ELT Instead of ETL**

Use cloud warehouse or lakehouse compute engines for transformations. And when choosing which services to use it is
worth choosing services that seperates compute power from storage.

This approach of bringing compute to the data which ensures the ability to scale on demand and
minimizes unnecessary data movement.

Examples of services providing using this approach is:

* DataBricks - available in Azure, AWS and GSP.
* Microsoft Fabric
* AWS ...
* GCP ...


## Step 3: Modeling in the Gold Layer

The Gold layer is the consumer-facing layer, optimized for:

* Business Intelligence (BI)
* Reporting
* Machine Learning
* AI, GenAI, AgenticAI
* API-based data access

At this stage, performance, stability, and semantic consistency are paramount.


### Data Modeling Approaches
Common modeling patterns include:

* Star schemas (facts and dimensions)
* Aggregated tables
* Feature stores for machine learning
* Metadata should be explicitly defined, including:

### Business definitions
KPI logic
Documentation and ownership

### Performance Optimization in the Gold Layer

* Precomputed aggregations
* Materialized views
* Selective denormalization
* Caching (warehouse engine or BI tools)
* Separate compute pools per workload

The Gold layer should:

### Deliver low query latency
Be isolated from heavy ingestion and transformation workloads

## Cloud-Native Considerations

1. **Decouple Storage and Compute**

Cloud platforms make it possible to:

Scale storage and compute independently
Pause or downscale compute when idle
Optimize costs without sacrificing performance

2. **Infrastructure as Code (IaC)**
Deploy pipelines, storage, and compute consistently using IaC
Ensure environment parity across development, test, and production

3. **Security and Governance**

Managed identities and IAM
Encryption at rest and in transit
Row-level and column-level security
Data classification, lineage, and compliance controls

4. **Observability and Monitoring**

Pipeline metrics and logging
Data quality validation
SLA and SLO monitoring
Automated alerting

**Balancing Performance and Cost**
In the cloud, performance and cost are tightly coupled:

Use low-cost storage for Bronze data
Consume compute only when needed in Silver transformations
Optimize queries and models in the Gold layer
Separate ingestion and analytics workloads
“Scale when busy – stop when idle” should be a guiding design principle.


## Conclusion

The Medallion architecture provides a robust, scalable, and performance-optimized approach to data ingestion and processing in modern data warehouses.  

Keeping the Bronze layer raw and inexpensive
Optimizing the Silver layer for efficient transformations
Designing the Gold layer for consumer performance
…and fully leveraging cloud-native capabilities, organizations can establish a data platform that is:

Future-proof
Cost-efficient

Easy to govern and evolve

The architecture supports both traditional BI and advanced analytical workloads, making it a solid foundation for data-driven organizations.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)