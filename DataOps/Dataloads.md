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

This section explains how data should be ingested from a source into a analytical workspace using based on the Medallion
architecture, with particular focus on:

1. Data pipeline design
2. Performance optimization
3. Cloud-native principles
4. Robustness, scalability, and cost control

This section is based on modern cloud platforms like Azure, AWS, or GCP, but the principles are generic and platform-agnostic.

## Overall Architecture Principles

Just to summarize what can be learned from the *main document* the Medallion architecture divides the data lifecycle into clearly separated layers:

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

The overall concept of loading data has been for a long time and should always be: do not mix movement of large amount
of refinement proces of each element of these data.

Even though often forgotten this is still VERY good practice - and missing this often is the painpoint of performance issues.

The "story" I mostly use when explaining this is about moving from one house to another.

The first task is to get all the boxes from the old place to new place - witout looking in each of the boxes. This is often
done by movers and I would not like to have them look in each box.

When the boxes is then at the new place, you will look at the box - not in the box - to see what room this box needs to go to.
And this would also most likely be done by movers/friends, so still no reason for them to look in the box.

And then, when the box is at the right room, you (personally) open it and starts figuring out what to do with the content.

## A note on file formats

As you will learn in the rest of this section files places and overall role. And as their are many different file formats
lets have a look on what is normally seen and hence used in the data platform.

### JSON (JavaScript Object Notation)
**Typical use cases**: API payloads, Configuration files, Semi-structured data exchange between applications, 
                   Event and streaming data (telemetry, logs)  
**Key characteristics**: Text-based and human-readable, Schema-less or loosely enforced, Hierarchical and nested structure,
                     Widely supported across programming languages  
**Strengths**: Excellent for data exchange and APIs, Flexible data structure, Easy to read and debug.  
**Limitations**: Poor compression, Not columnar, Inefficient for large-scale analytics  

### Avro

**Typical use cases**: Data serialization in distributed systems,Streaming platforms (Kafka, Event Hubs), 
                   Data pipelines and system-to-system integration  
**Key characteristics**: Binary format (not human-readable), Strong explicit schema, Schema stored with/alongside the data,
                     Row-oriented  
**Strengths**: Compact and fast serialization, Supports schema evolution, Well suited for streaming workloads  
**Limitations**: Not optimized for analytics, Requires tooling to inspect, Less intuitive for manual inspection  

### ORC (Optimized Row Columnar)

**Typical use cases**: Large-scale analytics, Data warehousing, OLAP workloads in big data platforms  
**Key characteristics**: Columnar storage format, High compression, Column-level statistics and indexing,  
                     Strong schema support  
**Strengths**: High query performance, Efficient storage utilization, Effective for aggregations and filtering.  
**Limitations**: Less flexible than Parquet, Tightly coupled with big data engines, Not designed for frequent updates  


### XML (eXtensible Markup Language)

**Typical use cases**: Enterprise system integration, Document-centric data,  
                   Industry standards (like finance, healthcare, public sector)  
**Key characteristics**: Text-based and verbose, Tag-oriented hierarchical structure, Strong schema validation via XSD  
**Strengths**: Mature ecosystem, Strong validation capabilities, Suitable for document-style data  
**Limitations**: Large file sizes, Expensive parsing, Not suitable for analytics  

### CSV (Comma-Separated Values)

**Typical use cases**: Simple tabular data exchange, Imports/exports, Spreadsheet interoperability  
**Key characteristics**: Plain text, row-based, No built-in schema or metadata, One record per line  
**Strengths**: Universally supported, Easy to generate and consume, Human-readable  
**Limitations**: No data type enforcement, No compression or indexing, Sensitive to delimiters and encoding issues  

### TXT (Plain Text)

**Typical use cases**: Logs, Free-form or raw text, Temporary or intermediate storage  
**Key characteristics**: Unstructured or minimally structured, No schema or metadata, Arbitrary layout  
**Strengths**: Maximum flexibility, Simple to generate, No special tooling required  
**Limitations**: Requires custom parsing, Not analytics-friendly, No structure or governance  

### Parquet

**Typical use cases**: Data lakes, Analytical workloads, BI, reporting, machine learning  
**Key characteristics**: Columnar, binary format, Schema-aware, Designed for distributed processing  
**Strengths**: Excellent performance for analytics, High compression, Column pruning and predicate pushdown,  
           Broad ecosystem support  
**Limitations**: Not human-readable, Not suitable for row-level updates, Requires analytical engines  

### XLS / XLSX (Excel)

**Typical use cases**: Business reporting, Ad-hoc data analysis, Small to medium datasets, Data sharing with business users  
**Key characteristics**: Binary (XLS) or XML-based container (XLSX), Supports formulas, charts, formatting, 
                     Strongly interactive  
**Strengths**: Very user-friendly, Rich functionality, Widely adopted  
**Limitations**: Not scalable, Poor performance at large volumes, Not suitable as a system of record  

### Delta Lake

**Typical use cases**: Governed data lakes, Medallion architectures (bronze/silver/gold),  
                   Incremental and streaming data processing  
**Key characteristics**: Built on top of Parquet, Transaction log (`_delta_log`), ACID transactions on data lakes,  
                     Schema enforcement and evolution, Time travel and versioning  
**Strengths**: Combines lakes and databases, Supports updates, deletes, and merges, Ideal for modern analytics platforms  
**Limitations**: Requires compatible engines, Slight overhead compared to raw Parquet  

**A Summary Table**

| Format     | Structure | Human-readable | Analytics-ready | Schema | Typical Use |
|------------|-----------|----------------|------------------|--------|-------------|
| JSON       | Semi      | Yes            | No               | Optional | APIs, events |
| Avro       | Row       | No             | Limited          | Yes    | Streaming |
| ORC        | Column    | No             | Yes              | Yes    | Data warehousing |
| XML        | Semi      | Yes            | No               | Yes    | Enterprise integration |
| CSV        | Tabular   | Yes            | Limited          | No     | Data exchange |
| TXT        | None      | Yes            | No               | No     | Logs, text |
| Parquet    | Column    | No             | Yes              | Yes    | Data lakes |
| XLS/XLSX   | Tabular   | Yes            | No               | Yes    | Business analysis |
| Delta Lake | Column    | No             | Yes (Advanced)   | Yes    | Governed data lakes |

So, seen from a data platform these are the suggested formats in the different layers:

|Layer|Type of data|Suggested format|
|-----|------------|----------------|
|Bronze|Raw data landing|Parquet/CSV|
|Bronze|Streaming input|JSON/Avro|
|Silver|Curated data|Delta Lake|
|Gold|Analytics & ML|Delta Lake|
|Archiv|Long-term storage|Parquet|

## Step 1: Data Ingestion into the Bronze Layer

The Bronze layer acts as the system of record for all ingested data. Data should be stored as close
to the source as possible, both semantically and structurally.

### Design Principles for Bronze layer

1. **No/Minimal Transformation**

In the bronze layer data should be stored in its raw format avoiding data type mappings, business rules, and joins.
This means that you will preserve source columns, field names, and formats together with keeping the content "as is".

This ensures reproducibility, easier troubleshooting and the ability to reprocess data if needed.

The *minimal transformation* addresses the fact that you most likely will store the content in a file of some type (see #3).
Simply stating that a table stored in a database will not be moved into *yet another* database.

2. **Incremental Ingestion**

To obtain the best performance and scalability, data should - if possible - be ingested incrementally using mechanism like
change data capture (CDC), watermarks (e.g. timestamps, identity columns) or Event streams (e.g., Kafka, Event Hubs).

So you should try to avoid full reloads, unless data volumes are very small.

>[!Note]
>Most likely the first load would probably be a full load.

3. **Cloud Storage as a Landing Zone**

The Bronze layer should reside in low-cost, elastic object storage, like Azure Data Lake Gen2,
Amazon S3 or Google Cloud Storage in recommended file formats.

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

### Performance Design in the Silver Layer

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

Examples of services using this approach are:

* DataBricks - available in Azure, AWS and GSP.
* Microsoft Fabric
* AWS Redshift
* Google BigQuery
* Snowflake


## Step 3: Modeling in the Gold Layer

The Gold layer is the consumer-facing layer, optimized for:

* Business Intelligence (BI)
* Reporting
* Machine Learning
* AI, GenAI, AgenticAI
* API-based data access

At this stage, performance, stability, and semantic consistency are paramount.

### Data Modeling Approaches

To make the Gold layer user friendly datamodels comes into plæay and common modeling patterns include:

* Star schemas (facts and dimensions)
* Aggregated tables
* Feature stores for machine learning
* Datasets

To make these modeæs easier to use metadata should be explicitly defined, including
business definitions, KPI logic, documentation and ownership

### Performance Optimization in the Gold Layer

* Precomputed aggregations
* Materialized views
* Selective denormalization
* Caching (warehouse engine or BI tools)
* Separate compute pools per workload

The Gold layer must deliver low query latency hence mujst be isolated from heavy ingestion and transformation workloads.
This means that data in any of the above describes modeling patterns will only cotain the required rows and columns to fullfill
the task it is designed for.

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