![microsoft](../images/microsoft.png)

# A data platform - Agentic AI

**Work in Progress. Content is CoPilot generated and currently lacks human editing**

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## **Background**

The content in this section comes from a discussion I have at a big danish NGO who handles
human crisis situations worldwide.

In its nature this NGO handles crisis of many different natures. And hence for each crisis their
is always something that is more or less different.

So how can you make an optimal process that can cover all these differences. It really does not 
fit very well into the paradigms we often talk about when wants to make something more effective, 
scalable, repeatable, reliable, proven, etc. as this often has standardization as a main element.

It is difficult to put into a standard ERP/CRM system or into a traditional datawarehouse/
datamart/"one-version of the truth" setup.

So the idea arose that instead of trying to get all kind of crisis in to a standard setup, what
if each element (in this context read *dataset*) had it is own agent. Each of these agents should
then provide a description of what this *dataset* contains ("columns"), (maybe) a description per column, what is the *key* and how can this *dataset* be combined with other *datasets*.

In this section we will call these agents *table-connected agents*.

## **What Are Table-Connected Agents?**

Table-connected agents have these characteristics:

* **Automated entities** that perform operations on a single, designated *dataset*.
* **Event-driven** so that they only provide content if appropriate.
* **Governed** meaning that the individual agent ensures that the requester can get a response.
* **Data Quality** for the individual agent is handled by the agent itself.
* **Integration points** for external systems to interact with database tables.

In this way an agent can be used in any number of relevant contexts providing the part of the
overall response that makes sense.

## **How to Establish Table-Connected Agents**

Establishing agents involves:

1. **Define the Scope**
    * Identify the table and operations (INSERT, UPDATE, DELETE) to monitor.
    * Determine the business logic or automation required.

2. **Choose the Mechanism**
    * **Database triggers** for real-time event handling.
    * **Middleware services** for complex logic.
    * **External agents using APIs** for cross-platform integration.

3. **Set Up Connectivity**
    * Use database credentials with least privilege.
    * Secure connections with SSL/TLS.
    * Implement authentication tokens for API-based agents.

### **Example: Metadata-Driven Agent**

A metadata-driven agent uses configuration tables to determine which tables and columns to monitor. For example:

```sql
CREATE TABLE AgentConfig (
    TableName VARCHAR(100),
    MonitorColumns VARCHAR(500),
    ActionType VARCHAR(50),
    EndpointURL VARCHAR(200)
);
```

The agent reads this configuration and dynamically applies monitoring logic.

## **How to Control Table Agents**

Control mechanisms ensure agents operate securely and efficiently:

* **Access Control**
  * Assign least privilege roles.
  * Use managed identities for cloud-based agents.

* **Governance**
  * Maintain audit logs of agent actions.
  * Apply data classification rules to prevent unauthorized access.

* **Performance Management**
  * Implement throttling for high-volume tables.
  * Use asynchronous processing for heavy tasks.

## **How to Use Table Agents**

Practical usage patterns include:

* **Data Quality Enforcement**
  * Validate incoming data against predefined rules.
  * Reject or correct invalid entries automatically.

* **Workflow Automation**
  * Trigger downstream processes when new records are added.
  * Example: Notify a CRM system when a new customer is created.

* **Analytics and Monitoring**
  * Collect metrics on table usage.
  * Detect anomalies in data patterns.

### **Integration Example**

Using REST APIs:

```bash
curl -X POST https://api.myagent.com/process \
-H "Authorization: Bearer <token>" \
-d '{"table":"Customer","action":"INSERT","data":{"id":123,"name":"Alice"}}'
```

## **Best Practices**

* Keep agents modular and stateless.
* Use configuration-driven design for flexibility.
* Implement robust error handling and retries.
* Monitor agent health and performance continuously.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Agent.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Agent-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Agent-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
