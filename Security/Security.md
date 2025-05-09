![microsoft](../images/microsoft.png)

# A data platform - Security

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Introduction

This section focuses on the "mere" security aspect on how to handle data. It covers the challenges that need to be addressed as well as thoughts on how to handle those.

This part is also a lot about processes and hence highlighting that you cannot solve data security by "just clicking some boxes in you IT systems".

In regard of scope, this section is in line with the overall Data Platform document and does not hence (yet) describe other aspects of data security than the once supporting this.

I think that most mechanism are useable for other kinds of data - including also "end-user" document handling like Microsoft OneDrive.

## Types of threats

Before looking into how data could be protected we need to have an understanding of what we are protecting against.

Here are a list of common types of threats that could occur in our data estate. This list is "copied in headlines" from
this Wikipedia articel - <https://en.wikipedia.org/wiki/Computer_security>, where much more detailed information can be found.

### Backdoor

A backdoor in a computer system, a cryptosystem, or an algorithm is any secret method of bypassing normal authentication or security controls.

### Denial-of-service attack

Denial-of-service attacks (DoS) are designed to make a machine or network resource unavailable to its intended users.

### Physical access attacks

A direct-access attack is when an unauthorized user (an attacker) gains physical access to a computer, most likely to directly copy data from it
or steal information. Attackers may also compromise security by making operating system modifications, installing software worms, keyloggers,
covert listening devices or using wireless microphones.

### Eavesdropping

Eavesdropping is the act of surreptitiously listening to a private computer conversation (communication), usually between hosts on a network. It typically occurs when a user
connects to a network where traffic is not secured or encrypted and sends sensitive business data to a colleague, which, when listened to by an attacker, could be exploited.
Data transmitted across an open network allows an attacker to exploit a vulnerability and intercept it via various methods.

### Malware

Malicious software (malware) is any software code or computer program "intentionally written to harm a computer system or its users".

### Man-in-the-middle attacks

Man-in-the-middle attacks (MITM) involve a malicious attacker trying to intercept, surveil or modify communications between two parties by spoofing one or both
party's identities and injecting themselves in-between.

### Phishing

Phishing is the attempt of acquiring sensitive information such as usernames, passwords, and credit card details directly from users by deceiving the users.

### Privilege escalation

Privilege escalation describes a situation where an attacker with some level of restricted access is able to, without authorization,
elevate their privileges or access level.

### Side-channel attack

Any computational system affects its environment in some form. This effect it has on its environment can range from electromagnetic radiation, to residual effect
on RAM cells which as a consequence make a Cold boot attack possible, to hardware implementation faults that allow for access or guessing of other values that
normally should be inaccessible.

### Social engineering

Social engineering, in the context of computer security, aims to convince a user to disclose secrets such as passwords, card numbers, etc. or grant physical access by,
for example, impersonating a senior executive, bank, a contractor, or a customer.[34] This generally involves exploiting people's trust, and relying on their cognitive biases.
A common scam involves emails sent to accounting and finance department personnel, impersonating their CEO and urgently requesting some action. One of the main techniques of
social engineering are phishing attacks.

### Spoofing

Spoofing is an act of pretending to be a valid entity through the falsification of data (such as an IP address or username), in order to gain access to information or resources
that one is otherwise unauthorized to obtain. Spoofing is closely related to phishing.

### Tampering

Tampering describes a malicious modification or alteration of data. It is an intentional but unauthorized act resulting in the modification of a system, components of systems, its
intended behavior, or data. So-called Evil Maid attacks and security services planting of surveillance capability into routers are examples.

### HTML smuggling

HTML smuggling allows an attacker to smuggle a malicious code inside a particular HTML or web page. HTML files can carry payloads concealed as benign, inert data in order to defeat
content filters. These payloads can be reconstructed on the other side of the filter.

## Data and security

Data security is a crucial aspect of any organization's operations. It involves protecting sensitive information from unauthorized access, corruption, or theft throughout its entire lifecycle.
By implementing strong *data* security measures, organizations can help protect their valuable assets, meet relevant compliance requirements, and maintain customer trust in the usage of data.

Data security is important because it helps organizations guard against cyber attacks, insider threats, and human error, all of which can lead to data breaches. The four key issues in data
security are confidentiality, integrity, availability, and compliance. As data is increasingly the target of attackers, organizations need security at the point of *data* to keep data safe and
be able to recover it faster. The goal of data security is to make your data as resilient as possible against any kind of misuse that being attacks, errors etc.

In summary, data security is essential for maintaining the confidentiality, integrity, and availability of an organization’s data. It helps protect valuable assets, meet compliance
requirements, and maintain customer trust.

## Exit strategy and Risk assessment

One of the "mechanism" that should be addressed in connection with Data security is the ability to "get out", meaning establishing and maintaining an Exit Strategy.
This Exit strategy can then also be used as the "anchor" point of having a Risk assessment of the data platform being implemented.

These 2 topics are discussed further in this [section](Exit-and-risc-strategies.md)

## Legislation

On a political/legislation level a lot of very good work (I think) has happened over the last years to outline and set requirements (laws)
on what we have to do to protect our data assets. And hence protect our customers, citizens and us self as individuals.

This document will use the two EU directives NIS2 and GDPR and the US HIPAA rules as examples of legislation being implemented.

1) GDPR is used because it describes what you can do with personal data and therefor how you should handle personal valuable data (PII).
2) NIS2 is used because it tells what to do if things goes wrong and what need to be considered trying to avoid this.
3) HIPAA is used because it focuses on Health Information, and is actually three laws in one. It consists of the Privacy Rule, the Security Rule and
the Data Breach Notification Rule.
4) EU Artificial Intelligence Act (EU AI Act) is a European Union regulation concerning artificial intelligence (AI).

A more comprehensive guide is provided in this [section](Legislation.md), including the ones mentioned beneath.

### GDPR

This Regulation lays down rules relating to the protection of *natural persons* with regard of the processing of **personal** data and
rules relating to the free movement of personal data.

This Regulation protects fundamental rights and freedoms of natural persons and in particular their right to the protection of personal data.
And GDPR states that the free movement of personal data within the European Union shall be neither restricted nor prohibited for reasons
connected with the protection of natural persons with regard to the processing of personal data.

So this directive protects individuals data from misusage. One of the main objectives in the GDPR directive is that data need to be **classified**.

Reference: <https://gdpr-info.eu/art-1-gdpr>

### NIS2

The NIS2 Directive (European Directive 2022/2555) is a legislative framework designed to enhance cybersecurity across the European Union by 
establishing a high common level of security for network and information systems.

It builds upon the original NIS Directive, expanding its scope and strengthening requirements to better address evolving cyber threats.

Under NIS2, essential and important entities must adopt appropriate, proportionate technical, operational, and organizational measures to manage 
cybersecurity risks.

These measures aim to protect network and information systems, as well as to prevent or minimize the impact of incidents on service 
recipients and interconnected services.

The directive mandates an "all-hazards" approach, meaning that entities must be prepared to address a wide range of threats, from cyber 
attacks to physical disruptions, ensuring comprehensive protection and resilience in their operations.

This directive regulates what needs to be in place regarding the usage of data. One of the main objectives is that you need to know where **all** your data is - as described in the most common used framework *behind* NIS 2 being CIS 18.

Reference: <https://www.nis-2-directive.com/>

### HIPAA

* The Privacy Rule: The HIPAA Privacy Rule establishes national standards to protect individuals' medical records and other individually identifiable health information (collectively defined as “protected health information”) and applies to health plans, health care clearinghouses, and those health care providers that conduct certain health care transactions electronically.  
* The Security Rule: The HIPAA Security Rule establishes national standards to protect individuals’ electronic personal health information that is created, received, used, or maintained by a covered entity. The Security Rule requires appropriate administrative, physical and technical safeguards to ensure the confidentiality, integrity, and security of electronic protected health information. 
* Data Breach Notifications: The Breach Notification Rule requires covered entities and business associates to notify affected individuals, HHS, and, in some cases, the media of a breach of unsecured PHI.

HIPAA is in effect together with other rules/laws, so data will live and need to be handled under these different kind of rules.

These rules are i.e. Virginia Consumer Data Protection Act, Illinois’ Biometric Information Privacy Act etc.

Reference: <https://www.hhs.gov/hipaa/index.html>

### EU Artificial intelligence Act

The EU Artificial Intelligence Act (EU AI Act) is a European Union regulation concerning artificial intelligence (AI). It establishes a common regulatory 
and legal framework for AI within the European Union. It came into force on 1 August 2024, with provisions that shall come into operation gradually over the following 6 to 36 months.

It covers all types of AI across a broad range of sectors, with exceptions for AI systems used solely for military, national security, research and non-professional purposes.

As a piece of product regulation, it does not confer rights on individuals, but regulates the providers of AI systems and entities using AI in a professional context.

The Act classifies non-exempt AI applications by their risk of causing harm. There are four levels – unacceptable, high, limited, minimal – plus an additional category for general-purpose AI.

* Applications with unacceptable risks are banned.
* High-risk applications must comply with security, transparency and quality obligations, and undergo conformity assessments.
* Limited-risk applications only have transparency obligations.
* Minimal-risk applications are not regulated.

For general-purpose AI, transparency requirements are imposed, with reduced requirements for open source models, and additional evaluations for high-capability models.

Reference: <https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R1689>

## Threats

When discussing security it is also essential to understand what it is we are trying to protect against - what are the threats ?

Their are som obvious threats that comes with the term cybersecurity. We need to protect data against outsider threats.
These threats spans from others that wants to steal our data for own use, over "hijacking" of data to terror acts like deletion/destroying of data.

Another threat we need to understand is internal threats.

## Logical mechanism

The logical mechanism covers elements that has to do with the process we need to have in place to ensure that we can support the requested/required security levels.

1) We must be able to discover the data- that means being able to notice their location, who owns them, what structure do they have, which environments do they belong to (i.e. dev, non-prod, prod) etc.
2) We also need to find out if their are items like configurations files, scripts (i.e. IaC programs etc) etc. that needs to be documented that (could) have an influence on our data.
3) Detect how users are interacting with data and identify potential insider risks.
4) Establish processed that can ensure data remains secure from data leakage and data exfiltration activities.
5) Establish processes that ensures we can restore any data that might have be compromised. And that we have processes that regularly tests that this restore works.

A long with such processes we also need to have mechanism that can help us having an understanding of the nature of the data in question.

Such mechanism are described in the next section.

## Marking Data

To ensure that we knows what nature the data we are looking at have, like is it production data or non-production data or are is it data that can be shared outside of out company, we need to be
able to mark data.

### Sensitivity

We must be able to classify data in our organization so that we know what kind of sensitivity they represent - meaning how are they allowed to be used. These sensitivties helps to determine
elements like who has access to that data, how long can/needs data to be retained and can we use soft delete on them.

Often we see sensitivty levels like : personal, public, general, confidential, and highly confidential. Note - These are Office365 default levels.

1) Personal - Non-business data, for personal use only - like personal pictures and a phone.
2) Public - business data that is specifically prepared and approved for public consumption - like a press release.
3) General - Business data that is not intended for public consumption. However, this can be shared with external partners, as required. Examples include a company internal telephone directory, organizational charts, internal standards, and most internal communication.
4) Confidential - Sensitive business data that could cause damage to the business if shared with unauthorized people. Examples include contracts, security reports, forecast summaries, and sales account data.
5) Highly Confidential - Very sensitive business data that would cause damage to the business if it was shared with unauthorized people. Examples include employee and customer information, passwords, source code, and pre-announced financial reports.

### Common Frameworks

Many frameworks and legal regulations have specific requirements that encourage organizations to classify data.
Examples of such regulations are as flows:

1) SOC 2: The SOC 2 Trust Services Criteria requires that service organizations who include the confidentiality category in their audit demonstrate that they identify and maintain confidential information to meet the entity’s objectives related to confidentiality.
2) HIPAA: PHI is considered high-risk data. As such, HIPAA Security Rule requires that all covered entities and business associates implement administrative safeguards that ensure the confidentiality, integrity, and availability of PHI. In addition, the HIPAA Privacy Rule limits the uses and disclosures of PHI, forcing covered entities and business associates alike to establish procedures for classifying the data they collect, use, store, or transmit.
3) PCI: In order to comply with PCI DSS Requirement 9.6.1, entities must “classify data so that sensitivity of the data can be determined.”
4) GDPR: Organizations that handle the personal data of EU data subjects must classify the types of data they collect in order to comply with the law. Additionally, GDPR categorizes certain data – race, ethnic origin, political opinions, biometric data, and health data – as “special” and therefore it is subject to additional protection. This not only means that organizations need to know what types of data they hold, but they also need to be able to label such data.

### Classification

Classifications are expressions or patterns that can help identify what kind of data can be found in a file or a column in a table.
Examples of such classifications are Social Security Number, Drive license number, Bank account number, etc.

A combination of classification often helps setting the right sensitivity to a given *data* or *dataset* - either manually or during a scanning process.

### Policies

Policies helps to enforce organizational standards and to assess compliance and is very often relying on a framework like ISO27xxx, NIST or CIS18. 

Common use cases for such policies include implementing governance for data consistency, regulatory compliance, security, and management. 

IN an Azure environment policy definitions are already available for such common use cases as built-ins to help you get started.

Some useful governance actions you can enforce using Azure Policy are:

1) Ensure your team deploys Azure resources only to allowed regions and hence ensure that data is stored in only allowed Azure locations.
2) Enforce the consistent application of taxonomic tags.
3) Require resources to send diagnostic logs to a Log Analytics workspace.

## Technical mechanism

In *Figure 1* you will find several ways to protect data which are available in Azure. This does not address the more general things like network security, Multi Factor Authentication etc. which is assumed to be in place.

![figure 1](../images/english/Slide8.JPG)

*Figure 1*

**Application Based Access Control** – covers that an Application like SAP, Snowflake, Fabric, Dynamics etc. requires a login and hence grants the correct access to the underlying data used in the application. Often the underlying data store is a (relational) database, which is accessed from the application using a service account.

**Role Based Access Control** – also known as RBAC. This controls the access to a given resource and how it can be used. So popular said – can one get to the storage account?

**Attribute Based Access Control** – also known as ABAC - provides an extra mechanism for granting access making a “lookup” in another system. For example, you might be able to get to a storage account but their might a directory that requires that you are part of a given project. In this case you can make an ABAC “lookup” that checks this before providing access – depending on this result.

**Identity Based Access Control** – covers the capability that a given resource can be assigned an identity (becoming “a human”). And then you make sure that access to a given storage account is only provided to this “human” and hence you need to use this application to get to the data.

**Encryption Based Access Control** – this not really Access Control, because the *data* storage will be accessible, but I can only read/use the *data* if I have the Key for decryption. So, it can(should) be part of your defense.

**Removal Based Access Control** – this approach is only feasible in the **publish area**. This approach uses the aspect of the **publish area** that a dataset store only “lives as long as being used”, in this case “...being used correctly”. Because this approach requires the ability to be able to recreate a given *dataset* store, this can also be used as a defense mechanism. So, if an attack is realized the easiest way to stop this is to simply remove the resource under attack if there is a risk of *dataset* loss.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)