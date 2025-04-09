![microsoft](../images/microsoft.png)

# A data platform - Cloud Environments

[![en](https://img.shields.io/badge/lang-en-red.svg)](Cloud-env.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Cloud-env-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Cloud-env-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

## IaaS, PaaS, and SaaS Environments

Cloud computing offers various service models to cater to different business needs. The three primary models are Infrastructure as a Service (IaaS), Platform as a Service (PaaS), and Software as a Service (SaaS). Each model provides different levels of control, flexibility, and management.

### Infrastructure as a Service (IaaS)

IaaS provides virtualized computing resources over the internet. It offers the most control over the IT resources and is closest to traditional on-premises data centers.

Key Features

* Virtual Machines: Users can create and manage virtual machines with their own operating systems.
* Storage: Scalable storage solutions, such as block storage and object storage.
* Networking: Virtual networks, load balancers, and IP addresses.
* Flexibility: Users can scale resources up or down based on demand.
* Pay-as-you-go: Billing based on usage, allowing cost efficiency.

Use Cases

* Development and Testing: Quickly set up and tear down development environments.
* Website Hosting: Host websites and web applications.
* Data Storage and Backup: Store large amounts of data with high availability.
* Disaster Recovery: Implement disaster recovery solutions with minimal upfront costs.

Examples

* Amazon Web Services (AWS) EC2
* Microsoft Azure Virtual Machines
* Google Cloud Compute Engine

### Platform as a Service (PaaS)

PaaS provides a platform allowing customers to develop, run, and manage applications without dealing with the underlying infrastructure. It abstracts much of the system administration work.

**Key Features**

* Development Tools: Integrated development environments (IDEs) and tools for coding, testing, and deploying applications.
* Middleware: Software that connects different applications and services.
* Database Management: Managed database services for storing and retrieving data.
* Scalability: Automatic scaling of applications based on demand.
* Integration: Easy integration with various services and APIs.

**Use Cases**

* Application Development: Develop and deploy web and mobile applications.
* API Development: Create and manage APIs for different services.
* Analytics and Business Intelligence: Build and deploy analytics applications.
* IoT Applications: Develop and manage Internet of Things (IoT) applications.

**Examples**

* Google App Engine
* Microsoft Azure App Services
* Heroku

### Software as a Service (SaaS)

SaaS delivers software applications over the internet, on a subscription basis. Users access the software via a web browser, and the provider manages the infrastructure and platforms that run the applications.

**Key Features**

* Accessibility: Access applications from any device with an internet connection.
* Maintenance: The provider handles updates, security, and maintenance.
* Subscription-Based: Pay for the software on a subscription basis, often monthly or annually.
* Scalability: Easily scale the number of users and features as needed.
* Integration: Integrate with other SaaS applications and services.

**Use Cases**

* Business Applications: CRM, ERP, and HR management systems.
* Collaboration Tools: Email, instant messaging, and project management tools.
* Content Management: Manage and distribute digital content.
* E-commerce: Online shopping platforms and payment gateways.

**Examples**

* Google Workspace (formerly G Suite)
* Microsoft Office 365
* Salesforce

## Shared responsibility in a cloud environment

It is important to understand who has the responsibility regarding the different layers in the infrastructure when you use either on-premise or a cloud, and in the cloud understand this across Infrastructure as a Service (IaaS), Platform as a Service (Paas) and Software as a Service.

The foundation of understanding who has what responsibility requires documents describing how this handled.

The rest of this section describes the structure within Microsoft and hence a data platform based on Azure. Please consult similar documents depending on your infrastructure.

### The contracts

The different aspects of shared responsibility is handled in multiple documents.

As shown in XXXXX

The **Principal Agreement (MCA or MBSA & EA)** is the "main" contract describing the "purchasing conditions"

Under this you will 

The **Microsoft Product Terms** provide detailed information about the rights and restrictions associated with the use of Microsoft products and services. Here are the key aspects of the Product Terms:

1. **Purpose and Scope**:
   - The primary purpose of the Product Terms is to explain the rights granted to customers for using Microsoft products (the "use rights") and any restrictions or limitations on their use .
   - The Product Terms may also include other obligations that the customer may have with respect to a product, which are not covered in upstream agreements .

2. **Structure**:
   - The Product Terms are structured to be straightforward and easy to understand, catering to a diverse audience including technical experts, procurement managers, and lawyers.
   - The terms are designed to be direct and to the point, avoiding legalese and ensuring clarity upon first reading.

3. **Content**:
   - The Product Terms cover various aspects such as licensing terms, privacy and security terms, data processing addendums, and service-specific terms.
   - They also include universal license terms for online services and specific terms for different product offerings.

4. **Generative AI Services**:
   - The Product Terms include specific provisions for the use of Microsoft Generative AI Services, such as restrictions on using these services to generate synthetic training data for developing AI models with similar functionality to Microsoft AI services.
   - Customers may use the Azure OpenAI Service to create synthesized data solely for fine-tuning certain model types.

5. **Transparency and Simplicity**:
   - The Product Terms aim to be transparent by clearly stating the rights and obligations of both Microsoft and the customer.
   - The content is kept lean to accelerate deal execution by focusing on necessary deployment and use rights .

6. **Updates and Accessibility**:
   - The Product Terms are regularly updated to reflect changes in Microsoft's product offerings and services .
   - They are accessible through the Product Terms website, where customers can find detailed information about the terms applicable to their specific products .

Overall, the Microsoft Product Terms are designed to provide clear, concise, and comprehensive information about the use rights and obligations associated with Microsoft products and services, ensuring that customers have a clear understanding of their licensing terms and conditions.

The **Product Terms** then have 3 documents under it, describing how .....



[![en](https://img.shields.io/badge/lang-en-red.svg)](Cloud-env.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Cloud-env-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Cloud-env-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)