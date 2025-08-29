![microsoft](../images/microsoft.png)

# A data platform - Data resiliency

**Work in Progress. Content is CoPilot generated and currently lacks human editing**

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Ops-Data-Resilience.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Ops-Data-Resilience-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Ops-Data-Resilience-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Introduction

In today’s digital world, data is the lifeblood of organizations. From customer records to operational data, the ability to access and protect this information is critical. **Data resiliency** refers to an organization’s ability to ensure data remains available, accurate, and secure — even in the face of disruptions such as hardware failures, cyber attacks, or natural disasters.

This section explores the concept of data resiliency, its importance, and practical strategies to implement it.
Even though it is part of the description of a data platform most of the elements discussed in this part can be used across any workload where data is an important part.

## What Is Data Resiliency?

In this section **data resiliency** will be definded as the capability of a system to recover as quickly as possible from any disruption and continue operating with no/minimal downtime or data loss. 

Hence it encompasses the following aspects:

- **Data availability**: Ensuring data is accessible when needed.
- **Data integrity**: Maintaining accuracy and consistency of data.
- **Data durability**: Protecting data from corruption or loss over time.
- **Disaster recovery**: The ability to restore data and systems after a *catastrophic* event.

## Why Data Resiliency Matters

The reason for implementing solid procedures regarding resiliency is to be able to support the following.

**Business Continuity** so that downtime can be avoided which could lead to lost revenue, damaged reputation, and regulatory penalties. **Cybersecurity** where ransomware and other attacks can compromise or destroy data.
**Compliance** regulations like GDPR, HIPAA, and ISO 27001 that requires data protection and recovery mechanisms.
And last but not least **Customer Trust** where reliable data systems would ensure confidence among citizens, customers and partners.

## Key Components of Data Resiliency

Thew following looks at the mechanism that should be considered/used when establishing these procedures. This should be
regarded as a pragmatic approach.

### 1. Redundancy

Redundancy is the mechanism of creating multiple copies of data across different systems or locations. The goal of this approach is to ensure that data is always available "somewhere else".

The mechanism that can be utilized to accomplish this is topics like RAID configurations, (cloud) backups, or geo-redundant storage. So it spans many different technology aspects.

### 2. Backup and Recovery

Backup and recovery is a vital part of the ability to be data resilient. It covers the process of regularly saving copies of data to be able restore in case of loss.

As backup usually are batch oriented processes, it is important to discuss RPO (Recovery Point Objective) defining the maximum amount of data you can afford to lose, determining how often you need to back up your data. And also RTO (Recovery Time Objective) defining the maximum time it takes to restore systems after an outage, dictating the speed of your restore process.

Both are critical metrics for a disaster recovery plan, guiding the frequency of backups (RPO) and the speed of recovery (RTO), with more critical systems requiring lower RPOs and RTOs, which can increase costs. 

This also means that you can not just define one backup strategy, but need to have a backup framework that can support multiple different ways of doing backup/restore.

Their are some **Best Practices** that ought to be followed.

First and foremost always automate backups and test recovery processes regularly.

Secondly follow the **3-2-1 rule** saying that you have 3 copies of the data distributed on 2 different media where 1 is offsite.

Azure actually has this rule build in. Storage in Azure is always stored in 3 copies - either as Local Redundant Storage (LRS) where 3 copies are in the same datacenter or Zone-redundant storage (ZRS) where the 3 copies are stored in 3 different datacenters in the same region. Regarding the "2 different media" rule this is accomplished in Azure using Geo-Redundant storage (GRS) or Geo-Zone-redundant storage where the data copies is also in a secondary region.

Azure offers to handle the offsite part of the rule using 3rd party backup tools like Commvault.

### 3. Disaster Recovery Planning (DRP)

It is of essence that you have a documented and (regular) tested plan for restoring IT systems after a disaster.

This plan describes in which order the different systems must be restored and which might need to wait for others having been restored. 

And for each of the systems in question the following is documented:

  - Recover Time Objective (RTO)
  - Recovery Point Objective (RPO)
  - Can the system be used after partial restore has been done ?
  - Roles and responsibilities
  - Communication plans


### 4. High Availability (HA)

A way of avoiding a *catastrophic* disaster is to design/buy/implement systems to support a **high avialability** architecture. Such systems can operate continuously without failure.

The **Techniques** used to make such systems are:
  - Load balancing, ensuring that you have more than 1 instance of the system and hence can *guide* a workload to the server being most idle. You can often also introduce or remove servers from such a setup depending on the workload of the system.
  - Failover clusters is a technique where a secondary machine is able to take over in case of malfunction of a primary server.
  - Active-active or active-passive configurations

From a data point of view it is of high importance that transactional control is considered where this is required.

### 5. Data Replication

- **Definition**: Real-time or scheduled copying of data to another system.
- **Types**:
  - Synchronous (real-time, zero data loss)
  - Asynchronous (slight delay, lower cost)

### 6. Cloud Resiliency

- **Cloud-native tools**: Use services like AWS S3 versioning, Azure Site Recovery, or Google Cloud Backup.
- **Multi-cloud strategies**: Avoid vendor lock-in and increase fault tolerance.

### 7. Security and Access Controls

- **Encryption**: Protect data at rest and in transit.
- **Access management**: Use role-based access control (RBAC) and multi-factor authentication (MFA).
- **Monitoring**: Detect anomalies and unauthorized access.

## Steps to Implement Data Resiliency

1. **Assess Risks and Requirements**
   - Identify critical data and systems.
   - Evaluate potential threats and vulnerabilities.

2. **Define RTO and RPO**
   - RTO: How quickly systems must be restored.
   - RPO: How much data loss is acceptable.

3. **Choose the Right Tools and Technologies**
   - Backup software, cloud services, replication tools, etc.

4. **Develop and Document Policies**
   - Create a data resiliency policy aligned with business goals.

5. **Test and Update Regularly**
   - Conduct drills and simulations.
   - Update plans based on changes in infrastructure or threats.

6. **Train Staff**
   - Ensure employees understand their roles in data protection and recovery.

## Conclusion

Data resiliency is not just a technical requirement—it’s a strategic imperative. By building resilient data systems, organizations can safeguard their operations, maintain customer trust, and ensure compliance with regulatory standards. Whether you're a small business or a global enterprise, investing in data resiliency is investing in your future.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Ops-Data-Resilience.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Ops-Data-Resilience-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Ops-Data-Resilience-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)