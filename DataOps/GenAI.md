![microsoft](../images/microsoft.png)

# A data platform - GenAI with the Data Platform

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

> *“Controlled GenAI isn’t about limiting intelligence. It’s about channeling it responsibly.”*

## The Spark

In an office overlooking the see, Louise, a data architect at a global firm, stared at the blinking cursor on her screen. Her team had just been allowed to integrate Generative AI into their operations—but with a caveat: **data must remain sovereign, secure, and compliant**.

The challenge? Harness the power of GenAI without compromising the sanctity of their data platform built on the premisses described in this document - that is, driven by governance and compliance.

## The Data Platform - revisited

Louise’s fortress was a **controlled data platform** — a secure, governed environment where data lineage, access control, and compliance were non-negotiable. Think of it as a digital vault with:

- **Role-based access control (RBAC)** - to ensure right access to right data in the right time frame.
- **Data masking and tokenization** - ensuring that you do not do development on production data
- **Audit trails** - that the data platform audits who saw what and when.
- **Data classification and tagging** - that the data platform "knows" which data is to be handled in special way - like GDPR data.

The data platform was built using the principles described in this document having Azure Databricks for data processing, Microsoft Purview for governance, and Microsoft Entra ID for access control. And that *data* available for use are the *datasets* in the publish area.

## The Oracle Arrives

In comes GenAI — an oracle of insight, capable of summarizing reports, generating code, and even drafting customer communications.

But it was also a wildcard. Left unchecked, it could hallucinate, leak sensitive data, or violate compliance rules.

So Louise made a plan to **embed GenAI within the walls of the already controlled data platform**.

## The Integration Blueprint

So, Louise had to decided how the GenAI services should interact with the data platform. Should it "just" be seen as yet another reporting capability or does GenAI
introduce new disciplines to be handled.

And the answer is yes, new disciplines need to be handled, because of the Large Language Models (LLM) and the way they work.

### Model Selection

The first thing to consider is which models should be available for the business - Azure provides access to over 1800 different models.

Louise divided the models into 2 main categories, the ones that has a size that they can be implemented into the dataplatform - this could be models
like LLaMA 3 or Mistral. Often knows as the Small Language Models (SLM). And the ones that are the "real" LLM's like ChatGPT which is so big the need to be called using an API.

#### The SLM models

Louise chose a **private LLM deployment** — an open-source model like LLaMA 3 or Mistral, hosted in a secure VNet. This ensured no data left the perimeter.

The paradigm here being that *“No API calls to the cloud. The model lives where the data lives.”*

#### The LLM models

Here Louise chose the OpenAI ChatGpt model 4o and its different variants relying on Azure to ensure that no customer data is shared. 

The paradigm for these models is that *"All API calls goes through a private endpoint"*

#### Data Access Layer

To ensure that right access to the right *datasets* Louise decided to continue using the *publish area* as the only point where the GenAI models could et its data from.

This approach to a **data abstraction layer** layer ensured that the data platform could enfores the same security mechanism as if the ask was for a report.

The challenge Louise faces is that often GenAI is looking *only* for documents, but still, the data platform is technically able to provide *datasets* in whatever form and shape needed
by the end-user tool.

So, GenAI could then only access data through this layer, never directly.

This approach also ensures that the data is of known (=good) quality as this is part of the *responsbilty* the data platform handles.

## GenAI Prompt Engineering with Guardrails

Prompts were templated and sanitized. She used:

- **Prompt injection filters**
- **Context windows limited to non-sensitive fields**
- **Output validation using regex and classifiers**

## Audit and Observability

Every GenAI interaction was logged:

- Who prompted it
- What data was accessed
- What output was generated

This fed into a **SIEM pipeline** for anomaly detection.

## Use Cases Unleashed

With the scaffolding in place, Louise’s team rolled out use cases:

- **Automated Report Summarization**: GenAI read BI dashboards and generated executive summaries.
- **Code Generation for ETL Pipelines**: Developers described transformations in natural language; GenAI wrote PySpark code.
- **Customer Email Drafting**: GenAI generated GDPR-compliant responses using CRM data—without ever seeing PII.

Each use case was sandboxed, monitored, and iteratively improved.

## Lessons from the Field

Louise documented key lessons:

- **Start small**: Pilot with non-sensitive data.
- **Human-in-the-loop**: Always review GenAI outputs.
- **Model tuning matters**: Fine-tune on domain-specific data for accuracy.
- **Compliance is a journey**: Work closely with legal and risk teams.

## The Future

As Louise looked out at the horizon, she saw a future where GenAI wasn’t a threat to data governance—but a partner. A co-pilot that respected boundaries, learned from context, and operated with transparency.

PS - maybe it is worth thinking about where the "person" Louise and the "layout" of this section actually started :wink:

[![en](https://img.shields.io/badge/lang-en-blue.svg)](GenAI.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](GenAI-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](GenAI-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)
