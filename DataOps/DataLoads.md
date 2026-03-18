![microsoft](../images/microsoft.png)

# A data platform - Loading and performance

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Dataloads.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Dataloads-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Dataloads-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)

## Ingesting Data into a Data Warehouse Using a Medallion Architecture 

### Introduction 

The Medallion architecture (commonly referred to as Bronze–Silver–Gold) has become a de facto standard for modern data platform and data warehouse design—especially in cloud-based environments. The architecture provides a structured, scalable, and performance-optimized approach for ingesting, refining, and exposing data from source systems to analytical consumers. 

This article explains how data should be ingested from a source into a data warehouse using a Medallion architecture, with particular focus on: 

Data pipeline design 
Performance optimization 
Cloud-native principles 
Robustness, scalability, and cost control 
The article is based on modern cloud platforms (e.g., Azure, AWS, or GCP), but the principles are generic and platform-agnostic. 

 
## Overall Architecture Principles 
The Medallion architecture divides the data lifecycle into clearly separated layers: 

Layer 
Purpose 
Bronze 
Raw data from source systems – unchanged and complete 
Silver 
Cleaned, standardized, and enriched data 
Gold 
Business-ready, aggregated, and performance-optimized data 
This layered approach supports: 

Separation of concerns 
Traceability and governance 
Optimal performance at each processing stage 
Cloud scalability 
 
Step 1: Data Ingestion into the Bronze Layer 
Purpose 
The Bronze layer acts as the system of record for all ingested data. Data should be stored as close to the source as possible, both semantically and structurally. 

Design Principles 
1. Minimal Transformation 
Store data raw 
Avoid data type mappings, business rules, and joins 
Preserve source columns, field names, and formats 
This ensures: 

Reproducibility 
Easier troubleshooting 
Ability to reprocess data when needed 
2. Incremental Ingestion 
For performance and scalability, data should be ingested incrementally using: 

CDC (Change Data Capture) 
Watermarks (timestamps or identity columns) 
Event streams (e.g., Kafka, Event Hubs) 
Avoid full reloads, unless data volumes are very small. 

3. Cloud Storage as a Landing Zone 
The Bronze layer should reside in low-cost, elastic object storage: 

Azure Data Lake Gen2 
Amazon S3 
Google Cloud Storage 
Recommended file formats: 

JSON / Avro (event-based sources) 
CSV (simple batch sources) 
Parquet (where supported) 
 
Performance Optimization in the Bronze Layer 
Parallel ingestion (partitioned by table, date, or business key) 
Large file sizes (typically 100–1000 MB per file) 
Compression (Snappy, Gzip) 
Partitioning by ingestion time or business attribute 
The Bronze layer should scale horizontally and is not intended for complex queries. 

 
Step 2: Transformation into the Silver Layer 
Purpose 
The Silver layer represents cleaned, consistent, and technically correct data. 

At this stage, the focus shifts from the source system structure to a shared and standardized data model. 

 
Typical Transformations 
Data type normalization 
Deduplication 
Null handling 
Referential integrity validation 
Time zone normalization 
Code and reference data harmonization 
All transformations should be: 

Deterministic 
Version-controlled 
Idempotent 
 
Performance Design in the Silver Layer 
1. Columnar Storage Formats 
Silver data should be stored using columnar formats such as: 

Parquet 
Delta Lake / Iceberg / Hudi 
This enables: 

Predicate pushdown 
Selective column reads 
Efficient compression 
2. Partitioning and Clustering 
Correct partitioning is critical for performance: 

Date (e.g., event_date) 
Customer / tenant 
Region 
Optionally enhance with: 

Z-ordering or clustering techniques 
⚠ Over-partitioning can significantly degrade performance. 

3. ELT Instead of ETL 
Use cloud warehouse or lakehouse compute engines for transformations: 

Bring compute to the data 
Scale on demand 
Minimize unnecessary data movement 
 
Step 3: Modeling in the Gold Layer 
Purpose 
The Gold layer is the consumer-facing layer, optimized for: 

Business Intelligence (BI) 
Reporting 
Machine Learning 
API-based data access 
At this stage, performance, stability, and semantic consistency are paramount. 

 
Data Modeling Approaches 
Common modeling patterns include: 

Star schemas (facts and dimensions) 
Aggregated tables 
Feature stores for machine learning 
Metadata should be explicitly defined, including: 

Business definitions 
KPI logic 
Documentation and ownership 
 
Performance Optimization in the Gold Layer 
Precomputed aggregations 
Materialized views 
Selective denormalization 
Caching (warehouse engine or BI tools) 
Separate compute pools per workload 
The Gold layer should: 

Deliver low query latency 
Be isolated from heavy ingestion and transformation workloads 
 
Cloud-Native Considerations 
1. Decouple Storage and Compute 
Cloud platforms make it possible to: 

Scale storage and compute independently 
Pause or downscale compute when idle 
Optimize costs without sacrificing performance 
2. Infrastructure as Code (IaC) 
Deploy pipelines, storage, and compute consistently using IaC 
Ensure environment parity across development, test, and production 
3. Security and Governance 
Managed identities and IAM 
Encryption at rest and in transit 
Row-level and column-level security 
Data classification, lineage, and compliance controls 
4. Observability and Monitoring 
Pipeline metrics and logging 
Data quality validation 
SLA and SLO monitoring 
Automated alerting 
 
Balancing Performance and Cost 
In the cloud, performance and cost are tightly coupled: 

Use low-cost storage for Bronze data 
Consume compute only when needed in Silver transformations 
Optimize queries and models in the Gold layer 
Separate ingestion and analytics workloads 
“Scale when busy – stop when idle” should be a guiding design principle. 

 
Conclusion 
The Medallion architecture provides a robust, scalable, and performance-optimized approach to data ingestion and processing in modern data warehouses. 

By: 

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
[![main](https://img.shields.io/badge/main-document-green.svg)](../../README.md)