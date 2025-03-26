# Supporting Data Services - Common Data Model

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](README.md)

![tiger](../../images/DataModel.png) ![microsoft](../../images/microsoft.png)

## Introduction

The term *common data model* is used for any standardised data model which allows for data and information exchange between different applications and data sources. 

*Common data models* aim to standardise logical infrastructure so that related applications can "operate on and share the same data".
thin an organisation is one of the typical tasks of a data warehouse.

If you've ever had to bring data from multiple systems and applications together, you most likely know what an expensive and time-consuming task that can be.
Without being able to share and understand the same data easily, each application or data integration project requires it own implementation, which most likely has already 
been established at "another place" in your business.

## What is in a Common Data Model?

In addition to the documentation of its structure and content, a *Common Data Model* includes a set of standardized and often extensible schemas. This collection of schemas includes entities,
attributes, descriptions, and relationships. These schemas represent commonly used concepts and activities, such as Customer, Address etc. 
This approach simplifies the creation, aggregation, and analysis of data.

## Why use a Common Data Model?

Imagine that you have three business application.

One for materials, one for manufacturing, and one for sales. It almost certain likely that each of these applications has its own representation for assets that is used by all three application, like
the asset for an Account. Such an asset most likely contains the same information but represented in different ways in each applications - difference like name of columns, data types, data length.

If you used a *Common Data Model*, these applications would have had a standardized format to refer for assets like an Account to and (maybe) then each app could have used the same data.

Each applications would then have its own additional data and schemas, depending on its functionality. 

But when it comes to development, your apps and reports could then pull common data elements quickly, cleanly, and with confidence.

Now, as you know this is really not the reality. Their are some initiatives to make such models for data, often in the "ERP World". But often (=always) you will have to use a *Common Data Model*
as a "translator" between different systems. ANd in this case it makes a lot of sense to use some of the available industry standard data models that exists.

If you pursue this approach creating a new application, data mart or report becomes much more standardized. And your development efforts can concentrate on business logic rather than
figruring out how to transform the data *"yet another time"*.

Historically, the work to build an app has been tightly tied with data integration, but with Common Data Model and the platforms that support it, the two can happen independently:

App makers and/or developers: Whether these users leverage code-based platforms or a low-code/no-code platform such as Power Apps or Power BI, they need to store and manage data for their apps.

Data integrators: These users are responsible for bringing data from a variety of systems to make it accessible for apps to use.

Common Data Model simplifies data management and app development by unifying data into a known form and applying structural and semantic consistency across multiple apps and deployments. To summarize the benefits:

Structural and semantic consistency across applications and deployments.

Simplified integration and disambiguation of data that's collected from processes, digital interactions, product telemetry, people interactions, and so on.

A unified shape, where data integrations can combine existing enterprise data with other sources and use that data holistically to develop apps or derive insights.

The ability to extend the schema and Common Data Model standard entities to tailor the model to your organization.

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-dk-green.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](README.md)

![tiger](images/tiger.jpg) ![microsoft](images/microsoft.png)