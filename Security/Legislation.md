![microsoft](../images/microsoft.png)

# A data platform - Legislation - under construction

[![en](https://img.shields.io/badge/lang-en-red.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)

## Introduction

On a political/legislation level a lot of very good work (I think) has happened over the last years to outline and set requirements (laws)
on what we have to do to protect our data assets. And hence protect our customers, citizens and us self as individuals.

This section discusses many of the different directives/rules that could be of interest depending on industry and requirements and that we seen being
in effect at our customers.

This is meant to be an introduction to the different aspects of this, so please follow the provided links for more information.

## GDPR

The **General Data Protection Regulation (GDPR)** is a data protection law enacted by the European Union (EU) to safeguard personal data and privacy of individuals within the EU. It came into effect on May 25, 2018, and is considered one of the most comprehensive privacy and security laws globally.

### Key Components of GDPR

* Scope and Applicability - GDPR applies to any organization, regardless of its location, that processes personal data of individuals in the EU. This includes companies outside the EU that offer goods or services to EU residents or monitor their behavior.
* Personal Data - Personal data refers to any information that can directly or indirectly identify a living person. Examples include names, addresses, phone numbers, email addresses, IP addresses, and even online behavior.
* Data Processing Principles:
  * *Lawfulness, Fairness, and Transparency*: Data must be processed lawfully, fairly, and transparently.
  * *Purpose Limitation*: Data should be collected for specified, explicit, and legitimate purposes and not further processed in a manner incompatible with those purposes.
  * *Data Minimization*: Only the data necessary for the intended purpose should be collected.
  * *Accuracy*: Data must be accurate and kept up to date.
  * *Storage Limitation*: Data should be stored only as long as necessary for the purposes for which it was collected.
  * *Integrity and Confidentiality*: Data must be processed securely to protect against unauthorized or unlawful processing and accidental loss, destruction, or damage.

### Rights of Data Subjects

**GDPR** provides a set of "Rights" that the processor of the data must adhere to. These are as follows:

* Right to Access - Individuals have the right to access their personal data and obtain information about how it is being processed.
* Right to Rectification - Individuals can request correction of inaccurate or incomplete data.
* Right to Erasure (also known as the "Right to be Forgotten") - Individuals can request the deletion of their data under certain circumstances.
* Right to Restrict Processing - Individuals can request the restriction of processing their data under specific conditions.
* Right to Data Portability - Individuals can receive their data in a structured, commonly used, and machine-readable format and transfer it to another controller.
* Right to Object - Individuals can object to the processing of their data, particularly for direct marketing purposes.

So, one of the main objectives in the **GDPR** directive is that data need to be **classified**.

### Obligations of Data Controllers and Processors

The **GDPR** legislation defines the 2 key concepts of a *data controller* and a *data processor* to define *who* is responsible in aspects of the above mentioned *rights* and *principals*.

A *data controller* is a natural or legal person, public authority, agency, or any other body which, alone or jointly with others, determines the purposes and means of the processing of personal data.

A *data processor* is a natural or legal person, public authority, agency, or any other body that processes personal data on behalf of the *data controller*.

So, the difference between these two entities is then as follows:

* Data Controller: The data controller determines the purposes and means of processing personal data. They have overall control and responsibility for the data processing activities.
* Data Processor: The data processor acts on behalf of the data controller and follows their instructions. They do not have control over the purposes and means of processing

Both entities are obligated to secure the following:

* Data Protection by Design and Default - Organizations must implement appropriate technical and organizational measures to ensure data protection principles are integrated into processing activities.
* Data Protection Impact Assessments (DPIAs) - DPIAs are required for processing activities that pose high risks to individuals' rights and freedoms.
* Appointment of Data Protection Officers (DPOs) - Organizations must appoint DPOs if they engage in large-scale processing of sensitive data or systematic monitoring of individuals.
* Breach Notification - Data breaches must be reported to the relevant supervisory authority within 72 hours, and affected individuals must be informed if the breach poses a high risk to their rights and freedoms.

### Enforcement and Penalties

GDPR enforcement is carried out by national data protection authorities in each EU member state. Non-compliance can result in severe penalties, including fines up to €20 million or 4% of the annual global turnover, whichever is higher.

Reference: <https://gdpr.eu/what-is-gdpr/>

## NIS2

The **Network and Information Security Directive 2 (NIS2)** is a European Union directive (European Directive 2022/2555) aimed at enhancing the cybersecurity of critical infrastructure and essential services within the EU. It builds upon and expands the original NIS Directive (Directive 2016/1148), addressing its shortcomings and introducing more stringent requirements.

This directive regulates what needs to be in place regarding the usage of data. One of the main objectives is that you need to know where **all** your data is - as described in the most common used framework *behind* NIS 2 being CIS 18 (described later in this section).

### Key Components of NIS2

**NIS2** applies to a broader range of sectors compared to the original NIS Directive. It covers 15 sectors, including energy, transport, banking, financial market infrastructures, health, drinking water supply and distribution, digital infrastructure, public administration, and space.

Organizations within the scope of **NIS2** are required to implement appropriate and proportionate technical and organizational measures to manage the risks posed to the security of network and information systems.

**NIS2** also introduces stricter timelines for reporting significant incidents. Organizations must report incidents to the relevant national authorities within **24 hours** of detection.

The directive places a strong emphasis on securing supply chains. Hence organizations must also ensure that their suppliers and service providers adhere to robust cybersecurity standards.

It is important to notice that **NIS2** holds top management accountable for ensuring compliance with the directive. This includes the implementation of cybersecurity measures and the reporting of incidents.

Non-compliance with **NIS2** can result in severe penalties, including substantial fines and legal ramifications for management teams.

### Objectives of NIS2

**NIS2** aims to create a high common level of cybersecurity across the EU by harmonizing the security requirements and measures that organizations must implement.

The directive seeks to enhance cooperation and information sharing between EU member states to better respond to and mitigate cyber threats.

**NIS2** is designed to address the evolving landscape of cyber threats, ensuring that critical infrastructure and essential services are better protected against sophisticated attacks.

### Implementation Timeline

EU member states had until October 17, 2024, to transpose **NIS2** into their national laws. Organizations within the scope of the directive should have complied with its requirements by this date. Most countries did not achieve this - actually Croatia and Italy are the only countries having implemented **NIS2**. In Denmark the current date for the **NIS2** to be implemented is July 1, 2025.

### Differences Between NIS and NIS2

**NIS2** covers more sectors and organizations compared to the original NIS Directive. **NIS2** introduces more stringent security measures, reporting obligations, and penalties.
And the directive places greater emphasis on securing supply chains and ensuring that third-party providers adhere to cybersecurity standards.

Reference: <https://digital-strategy.ec.europa.eu/en/policies/nis2-directive>

## HIPAA

The **Health Insurance Portability and Accountability Act (HIPAA)** is a U.S. law enacted in 1996 to protect patient health information and ensure privacy and security in healthcare. It primarily aims to enable workers to carry forward healthcare insurance between jobs, prohibit discrimination against beneficiaries with pre-existing health conditions, and guarantee coverage renewability in multi-employer health insurance plans.

**HIPAA** is in effect together with other rules/laws, so data will live and need to be handled under these different kind of rules.

These rules are i.e. Virginia Consumer Data Protection Act, Illinois’ Biometric Information Privacy Act etc.

### Key Components of HIPAA

**HIPAA** is divided in to 5 *Titles*, which are as follows:

* Title I – Health Care Access, Portability, and Renewability - Ensures that individuals can maintain their health insurance coverage when changing or losing jobs.
* Title II – Preventing Health Care Fraud and Abuse, Administrative Simplification, and Medical Liability Reform - Introduces measures to combat healthcare fraud and abuse, and establishes standards for electronic healthcare transactions.
* Title III – Tax-Related Health Provisions Governing Medical Savings Accounts - Provides tax benefits related to medical savings accounts.
* Title IV – Application and Enforcement of Group Health Insurance Requirements - Enforces requirements for group health insurance plans.
* Title V – Revenue Offset Governing Tax Deductions for Employers - Addresses tax deductions for employers.

**HIPAA** works a set of administrative simplification regulations.

* Privacy Rule - Establishes national standards for the protection of individually identifiable health information (PHI). It regulates how PHI can be used and disclosed by covered entities and business associates.
* Security Rule - Sets standards for the protection of electronic PHI (ePHI) to ensure its confidentiality, integrity, and availability.
* Breach Notification Rule - Requires covered entities to notify affected individuals, the Secretary of Health and Human Services (HHS), and, in some cases, the media of breaches of unsecured PHI.

So, the objectives of **HIPAA** are to protect patients privacy which aims to safeguard the privacy of patient health information and give patients more control over their health data. Secondly, **HIPAA** seeks to improve efficiency by standardizing electronic healthcare transactions. Last, but not least, **HIPAA** seeks to combat fraud and abuse and hence saving billions of dollars for health plan members, employers, and US taxpayers.

### Rights of Individuals Under HIPAA

Just like **GDPR** **HIPAA** imposes a set of rights to the individual person (in **GDPR** terms the *Data subject*).

* Right to Access - Individuals have the right to access their health records and obtain copies of their PHI.
* Right to Amend - Individuals can request corrections to their health information if they believe it is inaccurate or incomplete.
* Right to an Accounting of Disclosure - Individuals can request a list of disclosures of their PHI made by a covered entity.
* Right to Request Restrictions - Individuals can request restrictions on how their PHI is used and disclosed.
* Right to Confidential Communications - Individuals can request that communications about their health information be made through alternative means or at alternative locations.

### Obligations of Covered Entities and Business Associates

The above principals then imposes obligations to entities handling PHI records.

Covered entities and business associates must implement administrative, physical, and technical safeguards to protect PHI. Secondly they must conduct regular risk assessments to identify and mitigate potential threats to PHI.
It is also required that employees must be trained on **HIPAA** policies and procedures to ensure compliance.
Last, but no least, Breaches of unsecured PHI must be reported promptly to affected individuals and the HHS.

**HIPAA** enforcement is carried out by the Office for Civil Rights (OCR) within HHS. Non-compliance can result in civil and criminal penalties, including fines and imprisonment.

Reference: <https://www.hhs.gov/hipaa/index.html>

### EU Artificial intelligence Act

The **EU Artificial Intelligence Act (AI Act)** is a significant regulatory framework aimed at harmonizing the development, deployment, and use of artificial intelligence within the European Union. It was proposed by the European Commission in April 2021 and came into effect on August 1, 2024, with provisions that it shall come into operation gradually over the following 6 to 36 months.

The **AI Act** defines an AI system as a machine-based system designed to operate with varying levels of autonomy and adaptiveness, generating outputs such as predictions, content, recommendations, or decisions that can influence physical or virtual environments.

The **AI Act** applies to providers and deployers of AI systems within the EU, as well as those outside the EU whose AI systems impact the EU market. It covers a broad range of sectors, including healthcare, finance, insurance, transportation, and education, with exceptions for AI systems used solely for military, national security, research and non-professional purposes.

As a piece of product regulation, it does not confer rights on individuals, but regulates the providers of AI systems and entities using AI in a professional context.

The **AI Act** classifies non-exempt AI applications by their risk of causing harm. There are four risk categories – unacceptable, high, limited, minimal – plus an additional category for general-purpose AI.

* Applications with unacceptable risks - AI systems that pose unacceptable risks to fundamental rights, safety, and public interests are prohibited. These include AI systems using subliminal techniques to manipulate behavior, exploiting vulnerabilities of specific groups, social scoring based on personal characteristics, and untargeted scraping for facial recognition databases.
* High-risk applications - AI systems, such as AI-based medical software or AI systems used for recruitment, must comply with strict requirements, including risk-mitigation systems, high-quality data sets, clear user information, and human oversight.
* Limited-risk applications - Systems like chatbots must clearly inform users that they are interacting with a machine, and certain AI-generated content must be labeled as such.
* Minimal-risk applications - AI systems such as spam filters and AI-enabled video games face no obligations under the AI Act, but companies can voluntarily adopt additional codes of conduct.

For general-purpose AI, transparency requirements are imposed, with reduced requirements for open source models, and additional evaluations for high-capability models.

### Objectives of the AI Act

The **AI Act** aims to ensure the safety of AI systems and protect the fundamental rights of individuals within the EU.

By providing these clear requirements and obligations, the **AI Act** seeks to foster responsible AI development and deployment, promoting innovation while preventing market fragmentation.

The **AI Act** also introduces transparency obligations for certain AI systems and holds top management accountable for ensuring compliance.

The **AI Act** emphasizes the importance of AI literacy for providers and deployers, requiring ongoing training and education tailored to specific sectors and use cases.

Hence the Commission has launched a consultation on a Code of Practice for providers of general-purpose AI models, addressing critical areas such as transparency, copyright-related rules, and risk management.

Being non-compliant with the **AI Act** can result in severe penalties, including substantial fines and legal ramifications for management teams.

Reference: <https://commission.europa.eu/news/ai-act-enters-force-2024-08-01_en>

## Digital Operational Resilience Act (DORA)

The **Digital Operational Resilience Act (DORA)** is a European Union regulation designed to enhance the digital operational resilience of financial entities. It was enacted on January 16, 2023, and will apply from January 17, 2025.

So, **DORA** seeks to strengthen financial entities against digital disruptions by ensuring they can withstand, respond to, and recover from Information and communication technology(ICT) related incidents.

By harmonizing practices across the EU, **DORA** aims to bolster the operational stability of the financial sector and enhance trust in its digital infrastructure.

**DORA** applies to a wide range of financial entities, including banks, insurance companies, investment firms, payment service providers, and critical third-party ICT service providers. This broad coverage reflects the interconnected nature of modern financial systems and the importance of ensuring resilience across the entire ecosystem.

These financial entities **must** implement comprehensive ICT risk management frameworks. These frameworks should include policies and procedures for identifying, assessing, and mitigating ICT risks and entities are required to conduct regular risk assessments and update their risk management strategies accordingly.

**DORA** mandates the reporting of major ICT-related incidents to competent authorities within a specified timeframe. This ensures that authorities are promptly informed of significant disruptions and can take appropriate action.The regulation also requires entities to maintain detailed records of all ICT-related incidents and the measures taken to address them.

Financial entities **must** conduct regular testing of their ICT systems to ensure they can withstand and recover from disruptions. This includes both basic and advanced testing, such as penetration testing and scenario-based testing.Testing results must be documented and used to improve the resilience of ICT systems.

**DORA** places a strong emphasis on managing risks associated with third-party ICT service providers. Financial entities must ensure that their third-party providers adhere to robust cybersecurity standards. Key contractual provisions must be in place to manage third-party risks, and entities must monitor the performance and security practices of their providers.

On the more *soft* side, the regulation encourages the sharing of information and intelligence on cyber threats among financial entities. This collaborative approach aims to enhance the overall security posture of the financial sector.

### Objectives of DORA

The main objective addressed by **DORA** aims to strengthen the cybersecurity of financial entities by standardizing risk management practices and ensuring robust protection against cyber threats. The regulation seeks to ensure that financial entities can withstand, respond to, and recover from ICT disruptions, thereby maintaining the stability and trust in the financial markets. And by harmonizing ICT risk management requirements across the EU, DORA aims to prevent regulatory fragmentation and create a level playing field for all financial entities.

**DORA** establishes an oversight framework for critical ICT third-party providers. Competent authorities will oversee these providers to ensure they comply with the regulation. - Non-compliance with **DORA** can result in severe penalties, including substantial fines and legal ramifications for management teams.

Reference: <https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en>

## Payment Card Industry Data Security Standard

*PCI Compliance* refers to the adherence to the **Payment Card Industry Data Security Standard (PCI DSS)**, which is a set of security standards designed to ensure that all companies that process, store, or transmit credit card information maintain a secure environment.

The **PCI DSS** was established by the PCI Security Standards Council (PCI SSC), which includes major credit card companies such as Visa, Mastercard, Discover, and American Express. The main goal of **PCI DSS** is to reduce the risk of credit card fraud and data breaches by implementing robust security measures.

**PCI DSS** requires 12 elements to be in place to obtain *PCI Compliance*.

* Install and maintain a firewall configuration to protect cardholder data. Firewalls are essential for preventing unauthorized access to network resources.
* Do not use vendor-supplied defaults for system passwords and other security parameters. Default passwords are easily guessable and should be changed.
* Protect stored cardholder data. Sensitive data must be encrypted and securely stored.
* Encrypt transmission of cardholder data across open, public networks. Encryption ensures that data is protected during transmission.
* Use and regularly update anti-virus software or programs. Anti-virus software helps detect and prevent malware.
* Develop and maintain secure systems and applications. Regular updates and patches are necessary to protect against vulnerabilities.
* Restrict access to cardholder data by business need to know. Access controls ensure that only authorized personnel can access sensitive data.
* Identify and authenticate access to system components. Strong authentication mechanisms are required to verify user identities.
* Restrict physical access to cardholder data. Physical security measures prevent unauthorized access to data.
* Track and monitor all access to network resources and cardholder data. Logging and monitoring help detect and respond to security incidents.
* Regularly test security systems and processes. Regular testing ensures that security measures are effective.
* Maintain a policy that addresses information security for all personnel. A comprehensive security policy helps ensure that all employees understand their roles and responsibilities.

These requirements as the basis for obtaining PCI compliance helps protect sensitive cardholder data from breaches and fraud.
And then the *PCI-compliance* demonstrates a commitment to security, which can enhance customer trust and loyalty.
Hence *PCI-compliance" actually helps organizations meet other regulatory requirements related to data protection.

Non-compliance can result in severe penalties, including fines and the loss of the ability to accept credit card payments.

Reference: <https://www.forbes.com/advisor/business/what-is-pci-compliance/>

## Standards and Frameworks

Many frameworks addresses *best practices* to follow. This section discusses some of the more *common ones*.

### FedRAMP

In the United States, the Federal Risk and Authorization Management Program (FedRAMP) standardizes security assessments for cloud services used by federal agencies. FedRAMP ensures consistent security practices across public, private, and hybrid cloud environments.

The Federal Risk and Authorization Management Program (FedRAMP) is a government-wide initiative established in 2011 to promote the adoption of secure cloud services across the federal government. It provides a standardized approach to security assessment, authorization, and continuous monitoring for cloud products and services 1 2.

Key Components of FedRAMP
Standardized Security Framework:

FedRAMP offers a consistent security framework for all cloud services used by federal agencies. This framework is based on the National Institute of Standards and Technology (NIST) guidelines, specifically NIST SP 800-53, but includes additional cloud-specific controls 2.
Joint Authorization Board (JAB):

The JAB is the primary governance and decision-making body for FedRAMP. It includes Chief Information Officers (CIOs) from the Department of Defense, Department of Homeland Security, and General Services Administration 1.
Program Management Office (PMO):

The FedRAMP PMO, housed within the General Services Administration (GSA), supports agencies and cloud service providers through the authorization process and maintains a secure repository of FedRAMP authorizations 1.
Objectives of FedRAMP
Reduce Duplicative Efforts:

By providing a standardized approach, FedRAMP reduces the need for multiple security assessments, thereby saving time and resources 2.
Promote Innovation and Security:

FedRAMP fosters public-private partnerships that encourage innovation while ensuring robust security measures are in place 2.
Accelerate Cloud Adoption:

The program aims to speed up the federal government’s adoption of cloud computing by providing clear and transparent standards and processes for security authorizations 2.
Authorization Process
Agency Authorization (ATO):

Any federal agency can work with a cloud service provider to obtain an Authority to Operate (ATO) for the cloud service. The agency then submits the security package to the FedRAMP PMO for authorization 2.
Third Party Assessment Organizations (3PAOs):

FedRAMP requires assessments to be conducted by certified 3PAOs. These organizations perform initial and periodic assessments of cloud systems based on federal security requirements 2.
Continuous Monitoring
FedRAMP emphasizes continuous monitoring to ensure that cloud services maintain their security posture over time. This includes regular security assessments and updates to address emerging threats 1.
Differences Between FedRAMP and FISMA
Scope:

FISMA applies to all federal information systems, while FedRAMP is specific to cloud services 2.
Assessment Requirements:

FedRAMP requires assessments by certified 3PAOs, whereas FISMA does not 2.
Reuse of Authorizations:

FedRAMP authorizations can be leveraged by multiple agencies, promoting efficiency and consistency across the federal government 2.
For more detailed information, you can visit the FedRAMP website or the GSA FedRAMP page.

Reference: <https://www.fedramp.gov/>

### ISO/IEC 27001

TThe **ISO/IEC 27001** is an international standard that provides a globally recognized framework for information security management systems (ISMS). Its applicability extends to both cloud and on-premises solutions, ensuring robust security measures, such as encryption, access controls, and incident response protocols.

**ISO/IEC 27001 is** applicable to any organization, regardless of size, type, or nature. It is designed to be adaptable to the specific needs and context of the organization.

The standard specifies the requirements for establishing, implementing, maintaining, and continually improving an ISMS. This includes the assessment and treatment of information security risks tailored to the needs of the organization.

Organizations must systematically examine their information security risks, considering the threats, vulnerabilities, and impacts. They must design and implement a coherent and comprehensive suite of information security controls and other forms of risk treatment to address those risks.

Top management must demonstrate leadership and commitment to the ISMS by ensuring the necessary resources are available, establishing an information security policy, and integrating the ISMS requirements into the organization’s processes.

The standard emphasizes the need for continual improvement of the ISMS. Organizations must monitor, review, and improve their ISMS to ensure it remains effective and aligned with the organization’s objectives.

### Structure of ISO/IEC 27001

The standard addresses a list of elements that should be in place:

* Understanding the organization and its context, including the needs and expectations of interested parties, and defining the scope of the ISMS.

* Establishing leadership commitment, defining roles and responsibilities, and setting the information security policy.

* Addressing risks and opportunities, setting information security objectives, and planning to achieve them.

* Providing resources, ensuring competence, raising awareness, and maintaining documented information.

* Implementing and operating the ISMS, including risk assessment and treatment.

* Monitoring, measuring, analyzing, and evaluating the ISMS, including internal audits and management reviews.

* Addressing nonconformities and implementing corrective actions to continually improve the ISMS.

The framework should then provide the following Benefits of ISO/IEC 27001

- **Enhanced Security**:
  - Provides a systematic approach to managing sensitive company information, ensuring its confidentiality, integrity, and availability [1](https://www.iso.org/standard/27001).
- **Compliance**:
  - Helps organizations comply with legal, regulatory, and contractual requirements related to information security [2](https://en.wikipedia.org/wiki/ISO/IEC_27001).
- **Risk Management**:
  - Enables organizations to identify and manage information security risks effectively [1](https://www.iso.org/standard/27001).
- **Customer Trust**:
  - Demonstrates to customers and stakeholders that the organization takes information security seriously [2](https://en.wikipedia.org/wiki/ISO/IEC_27001).
- **Operational Efficiency**:
  - Improves processes and reduces the likelihood of security incidents, leading to operational efficiencies [1](https://www.iso.org/standard/27001).

### Certification Process

1. **Preparation**:
   - Understand the requirements of ISO/IEC 27001 and prepare the organization for implementation [2](https://en.wikipedia.org/wiki/ISO/IEC_27001).

2. **Implementation**:
   - Develop and implement the ISMS, including risk assessment and treatment [1](https://www.iso.org/standard/27001).

3. **Internal Audit**:
   - Conduct internal audits to ensure the ISMS is functioning as intended [2](https://en.wikipedia.org/wiki/ISO/IEC_27001).

4. **Management Review**:
   - Top management reviews the ISMS to ensure its continuing suitability, adequacy, and effectiveness [1](https://www.iso.org/standard/27001).

5. **Certification Audit**:
   - An accredited certification body conducts an external audit to verify compliance with ISO/IEC 27001 [2](https://en.wikipedia.org/wiki/ISO/IEC_27001).

6. **Continual Improvement**:
   - Maintain and continually improve the ISMS to ensure ongoing compliance and effectiveness [1](https://www.iso.org/standard/27001).

Reference: <https://www.iso.org/standard/27001>


### NIST

The **National Institute of Standards and Technology (NIST)** is a U.S. federal agency that was established in 1901 and is part of the U.S. Department of Commerce. NIST's primary mission is to promote U.S. innovation and industrial competitiveness by advancing measurement science, standards, and technology in ways that enhance economic security and improve the quality of life [1](https://www.nist.gov/about-nist) [2](https://www.nist.gov/).

### Key Components of NIST

1. **Mission and Vision**:
   - **Mission**: To promote U.S. innovation and industrial competitiveness by advancing measurement science, standards, and technology in ways that enhance economic security and improve the quality of life [1](https://www.nist.gov/about-nist).
   - **Vision**: To be the world's leader in creating critical measurement solutions and promoting equitable standards. NIST's efforts stimulate innovation, foster industrial competitiveness, and improve the quality of life [1](https://www.nist.gov/about-nist).

2. **Core Competencies**:
   - **Measurement Science**: NIST develops and disseminates measurement techniques, standards, and technologies that underpin innovation and industrial competitiveness [1](https://www.nist.gov/about-nist).
   - **Rigorous Traceability**: Ensuring that measurements are accurate and traceable to international standards [1](https://www.nist.gov/about-nist).
   - **Development and Use of Standards**: NIST plays a crucial role in developing and promoting standards that ensure the quality and interoperability of products and services [1](https://www.nist.gov/about-nist).

3. **Areas of Focus**:
   - **Cybersecurity**: NIST develops guidelines and frameworks to help organizations manage and reduce cybersecurity risks. The NIST Cybersecurity Framework is widely used across various sectors [3](https://www.betterworldtechnology.com/post/what-is-nist-understanding-the-national-institute-of-standards-and-technology-2).
   - **Advanced Manufacturing**: NIST supports U.S. manufacturing by developing measurement techniques and standards that improve the quality and efficiency of manufacturing processes [2](https://www.nist.gov/).
   - **Quantum Science**: NIST conducts research in quantum science to develop new technologies and improve existing ones [2](https://www.nist.gov/).
   - **Health and Bioscience**: NIST's work in health and bioscience includes developing standards and measurement techniques for medical diagnostics, biotechnology, and other health-related fields [2](https://www.nist.gov/).
   - **Energy**: NIST supports the development of standards and measurement techniques for energy production, distribution, and consumption [2](https://www.nist.gov/).

4. **Historical Impact**:
   - NIST was established to address the need for a reliable measurement infrastructure in the U.S., which was lagging behind other industrialized nations at the time [1](https://www.nist.gov/about-nist).
   - Over the years, NIST has contributed to numerous technological advancements, from the development of atomic clocks to the creation of encryption standards [2](https://www.nist.gov/).

### Organizational Structure

- **Leadership**: NIST is led by a Director, who is appointed by the President of the United States. The Director oversees the agency's various programs and initiatives [1](https://www.nist.gov/about-nist).
- **Laboratories and Programs**: NIST operates several laboratories and programs focused on different areas of research and development, including the Physical Measurement Laboratory, the Engineering Laboratory, and the Information Technology Laboratory [2](https://www.nist.gov/).

### Contributions to Industry and Society

- **Standards Development**: NIST plays a key role in developing and promoting standards that ensure the quality, safety, and interoperability of products and services. These standards are used by industries worldwide [2](https://www.nist.gov/).
- **Innovation Support**: NIST supports innovation by providing measurement techniques, standards, and technologies that enable new products and services to be developed and brought to market [1](https://www.nist.gov/about-nist).
- **Economic Impact**: NIST's work contributes to the economic security of the U.S. by enhancing the competitiveness of U.S. industries and promoting technological innovation [1](https://www.nist.gov/about-nist).

For more detailed information, you can visit the [NIST website](https://www.nist.gov/about-nist) or the [Better World Technology page on NIST](https://www.betterworldtechnology.com/post/what-is-nist-understanding-the-national-institute-of-standards-and-technology-2).

[1](https://www.nist.gov/about-nist): [NIST](https://www.nist.gov/about-nist)
[2](https://www.nist.gov/): [NIST](https://www.nist.gov/)
[3](https://www.betterworldtechnology.com/post/what-is-nist-understanding-the-national-institute-of-standards-and-technology-2): [Better World Technology](https://www.betterworldtechnology.com/post/what-is-nist-understanding-the-national-institute-of-standards-and-technology-2)

### CIS 18

The **CIS Critical Security Controls (CIS Controls)** are a set of best practices developed by the Center for Internet Security (CIS) to help organizations improve their cybersecurity posture. The latest version, CIS Controls v8.1, includes 18 critical security controls designed to address the most prevalent and dangerous cybersecurity threats [1](https://www.cisecurity.org/controls/cis-controls-list) [2](https://www.cisecurity.org/controls).

### Key Components of CIS18

1. **Inventory and Control of Enterprise Assets**:
   - Actively manage (inventory, track, and correct) all enterprise assets connected to the infrastructure to ensure accurate monitoring and protection [1](https://www.cisecurity.org/controls/cis-controls-list).

2. **Inventory and Control of Software Assets**:
   - Manage all software on the network to ensure only authorized software is installed and executed, preventing unauthorized software from being installed or executed [1](https://www.cisecurity.org/controls/cis-controls-list).

3. **Data Protection**:
   - Develop processes and technical controls to identify, classify, securely handle, retain, and dispose of data [1](https://www.cisecurity.org/controls/cis-controls-list).

4. **Secure Configuration of Enterprise Assets and Software**:
   - Establish and maintain secure configurations for enterprise assets and software to prevent vulnerabilities [1](https://www.cisecurity.org/controls/cis-controls-list).

5. **Account Management**:
   - Use processes and tools to assign and manage authorization to credentials for user accounts, including administrator and service accounts [1](https://www.cisecurity.org/controls/cis-controls-list).

6. **Access Control Management**:
   - Create, assign, manage, and revoke access credentials and privileges for user, administrator, and service accounts [1](https://www.cisecurity.org/controls/cis-controls-list).

7. **Continuous Vulnerability Management**:
   - Continuously assess and track vulnerabilities on all enterprise assets to remediate and minimize the window of opportunity for attackers [1](https://www.cisecurity.org/controls/cis-controls-list).

8. **Audit Log Management**:
   - Collect, alert, review, and retain audit logs of events that could help detect, understand, or recover from an attack [1](https://www.cisecurity.org/controls/cis-controls-list).

9. **Email and Web Browser Protections**:
   - Improve protections and detections of threats from email and web vectors, which are common avenues for attackers [1](https://www.cisecurity.org/controls/cis-controls-list).

10. **Malware Defenses**:
    - Control the installation, spread, and execution of malicious code at multiple points in the enterprise[1](https://www.cisecurity.org/controls/cis-controls-list).

11. **Data Recovery**:
    - Implement processes and tools to ensure data recovery capabilities are in place to restore data after an incident [1](https://www.cisecurity.org/controls/cis-controls-list).

12. **Network Infrastructure Management**:
    - Secure network infrastructure by implementing segmentation, monitoring, and other controls [1](https://www.cisecurity.org/controls/cis-controls-list).

13. **Security Awareness and Skills Training**:
    - Provide security awareness and skills training to employees to ensure they understand their role in protecting the organization [1](https://www.cisecurity.org/controls/cis-controls-list).

14. **Service Provider Management**:
    - Manage service providers to ensure they adhere to security requirements and protect the organization's data [1](https://www.cisecurity.org/controls/cis-controls-list).

15. **Application Software Security**:
    - Implement security measures in the development and deployment of application software to prevent vulnerabilities [1](https://www.cisecurity.org/controls/cis-controls-list).

16. **Incident Response Management**:
    - Develop and implement incident response capabilities to detect, respond to, and recover from security incidents [1](https://www.cisecurity.org/controls/cis-controls-list).

17. **Penetration Testing**:
    - Conduct regular penetration testing to identify and remediate vulnerabilities before they can be exploited [1](https://www.cisecurity.org/controls/cis-controls-list).

18. **Security Leadership**:
    - Establish security leadership and governance to ensure the organization’s security strategy is aligned with business objectives [1](https://www.cisecurity.org/controls/cis-controls-list).

### Objectives of CIS18

- **Simplify Threat Protection**:
  - The CIS Controls provide a simplified approach to cybersecurity, helping organizations defend against top threats by implementing specific safeguards [2](https://www.cisecurity.org/controls).

- **Achieve Essential Cyber Hygiene**:
  - The controls focus on foundational security measures that help organizations achieve essential cyber hygiene and protect against common attack vectors [2](https://www.cisecurity.org/controls).

- **Comply with Industry Regulations**:
  - Implementing the CIS Controls helps organizations comply with various industry regulations, such as PCI DSS, HIPAA, GDPR, and others [2](https://www.cisecurity.org/controls).

### Implementation Groups (IGs)

- **IG1**:
  - Basic cyber hygiene suitable for small to mid-size organizations with limited resources [2](https://www.cisecurity.org/controls).
- **IG2**:
  - Intermediate cyber hygiene for organizations with moderate resources and risk profiles [2](https://www.cisecurity.org/controls).
- **IG3**:
  - Advanced cyber hygiene for organizations with significant resources and high-risk profiles [2](https://www.cisecurity.org/controls).

For more detailed information, you can visit the [CIS Controls page](https://www.cisecurity.org/controls/cis-controls-list) or the [RISMA Systems article on CIS18](https://www.rismasystems.com/en/resources/articles/what-is-cis18).

[1](https://www.cisecurity.org/controls/cis-controls-list): [CIS Controls](https://www.cisecurity.org/controls/cis-controls-list)
[2](https://www.cisecurity.org/controls): [RISMA Systems](https://www.rismasystems.com/en/resources/articles/what-is-cis18)



### Microsoft specific

Data residency regulations, such as those provided by the Microsoft EU Data Boundary Framework, ensures where data can be stored and processed. Organizations must align their data handling practices with local laws, balancing operational efficiency with compliance.

The **Microsoft EU Data Boundary Framework** is a comprehensive initiative by Microsoft to ensure that customer data and personal data are stored and processed within the European Union (EU) and European Free Trade Association (EFTA) regions. This framework is designed to address EU-specific concerns regarding data privacy and security, and it reflects Microsoft's commitment to data residency, transparency, and privacy [1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb) [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

### Key Components of the EU Data Boundary Framework

1. **Geographical Scope**:
   - The EU Data Boundary is a geographically defined boundary within which Microsoft has committed to store and process customer data and personal data for its enterprise online services, including Azure, Dynamics 365, Power Platform, and Microsoft 365 [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

2. **Data Residency**:
   - Microsoft ensures that customer data and personal data are stored at rest within the EU and EFTA regions. This commitment significantly reduces the flow of cloud data outside the EU, addressing concerns about data sovereignty and compliance with EU regulations [1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb).

3. **Transparency and Documentation**:
   - Microsoft provides detailed documentation to help customers understand data transfers and the technical and organizational measures taken to support regulatory compliance. This includes information on data flows, scoping, and increased levels of data transparency [1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb).

4. **Limited Data Transfers**:
   - While the primary goal is to keep data within the EU Data Boundary, there are limited circumstances where data may be transferred outside the EU. These transfers are subject to strict conditions and are documented to ensure transparency [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

5. **Customer Data and Professional Services Data**:
   - Customer Data includes all data provided to Microsoft by or on behalf of customers through the use of online services. Professional Services Data, which is stored at rest within the EU, is also covered under this framework [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

6. **System-Generated Logs**:
   - Microsoft online services create system-generated logs as part of regular operations. These logs, which may contain personal data, are essential for monitoring system performance, detecting and responding to operational problems, and complying with laws and regulations [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

### Objectives of the EU Data Boundary Framework

- **Enhance Data Privacy and Security**:
  - The framework aims to enhance data privacy and security for European customers by ensuring their data is stored and processed within the EU [1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb).
- **Compliance with EU Regulations**:
  - By adhering to the EU Data Boundary, Microsoft helps customers comply with EU data protection regulations, such as the General Data Protection Regulation (GDPR) [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).
- **Increase Customer Trust**:
  - The initiative is designed to increase customer trust by providing transparency and demonstrating Microsoft's commitment to protecting customer data [1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb).

### Implementation and Updates

- **Ongoing Deployment**:
  - Microsoft is continuously deploying more services and capabilities within the EU Data Boundary and updates the documentation accordingly [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).
- **Customer Support**:
  - Microsoft offers resources and support to help customers configure their services for use within the EU Data Boundary [2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

For more detailed information, you can visit the [Microsoft Trust Center](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb) or the [Microsoft Learn page on the EU Data Boundary](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn).

[1](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb): [Microsoft Trust Center](https://www.microsoft.com/en-us/trust-center/privacy/european-data-boundary-eudb)
[2](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn): [Microsoft Learn](https://learn.microsoft.com/en-us/privacy/eudb/eu-data-boundary-learn)

## List of laws per country

The following is a list of laws by country - just for informational purposes -[Reference](https://unctad.org/page/data-protection-and-privacy-legislation-worldwide)

|Country|Title of Legislation/Draft Legislation|Links to laws|
|---|---|---|
|Albania|"Law No. 9887 on the Protection of Personal Data 2008 (in English)"|https://www.idp.al/wp-content/uploads/2019/10/LDP_english_version_amended_2014.pdf|
|Algeria|Loi n° 18-07 du 10 juin 2018 relative à la protection des personnes physiques dans le traitement des données à caractère personnel (in French)|https://www.joradp.dz/Jo2000/2018/034/FP10.pdf|
|Andorra|Qualified law 15/2003 on personal data protection  (in Catalan)|https://www.afapdp.org/wp-content/uploads/2018/05/Andorre-Loi-n%C2%B015-2003-relative-a-la-protection-des-donnees-personnelles-2003.pdf|
|Angola|Lei No. 22/11 da Protecção de Dados Pessoais de 17 de Junho (in Portuguese)|https://media2.mofo.com/documents/Law_22_11_Data_Privacy_Law.pdf|
|Angola|"Regulamento das Tecnologias e dos Serviços da Sociedade da Informação Decreto Presidencial n.º202/11 (in Portuguese) "|https://www.inacom.gov.ao/fotos/frontend_6/editor2/1_lei_202_de_2011-22_de_julho_de_2011.pdf|
|Antigua and Barbuda|Data Protection Act 2013 (in English)|http://laws.gov.ag/wp-content/uploads/2019/02/a2013-10.pdf|
|Argentina|"Constitución de la Nación Argentina Ley Nº 24.430 Sancionada el 15 de Diciembre de 1994 (in Spanish)"|http://servicios.infoleg.gob.ar/infolegInternet/anexos/0-4999/804/norma.htm|
|Argentina|Ley 25.326 de Protección de los Datos Personales (in Spanish)|http://servicios.infoleg.gob.ar/infolegInternet/anexos/60000-64999/64790/norma.htm|
|Argentina|"Resolución 4/2019 RESOL-2019-4-APN-AAIP"|http://servicios.infoleg.gob.ar/infolegInternet/anexos/315000-319999/318874/norma.htm|
|Argentina|Decreto 1558/2001 (in Spanish)|http://servicios.infoleg.gob.ar/infolegInternet/anexos/70000-74999/70368/norma.htm|
|Argentina|Disposición 60 - E/2016 (in Spanish)|InfoLEG - Ministerio de Justicia y Derechos Humanos - Argentina|
|Argentina|Resolución 159/2018 - RESOL-2018-159-APN-AAIP (in Spanish)|InfoLEG - Ministerio de Justicia y Derechos Humanos - Argentina|
|Argentina|Convenio 108 aprobado por Ley Nº 27.483 (in Spanish)|http://servicios.infoleg.gob.ar/infolegInternet/anexos/315000-319999/318245/norma.htm|
|Armenia|Law of the Republic of Armenia on the Protection of Personal Data (in English)|http://www.foi.am/u_files/file/Personaldataprotectionlaw_ENG.pdf|
|Australia|Privacy Act 1988 (in English)|http://www.comlaw.gov.au/Details/C2015C00089|
|Austria|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Austria|Federal Act concerning the Protection of Personal Data (DSG) (in German)|https://www.ris.bka.gv.at/Dokumente/Erv/ERV_1999_1_165/ERV_1999_1_165.html|
|Austria|Datenschutzgesetz 2000 (in German)|https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=bundesnormen&Gesetzesnummer=10001597|
|Azerbaijan|Law on Personal Data 2010 (in Azerbaijani)|http://www.e-qanun.az/framework/19675|
|Bahamas|Data Protection (Privacy of Personal Information) Act 2003 (in English)|http://laws.bahamas.gov.bs/cms/images/LEGISLATION/PRINCIPAL/2003/2003-0003/DataProtectionPrivacyofPersonalInformationAct_1.pdf|
|Bahrain|Law on the Protection of Personal Data (in Arabic)|http://www.legalaffairs.gov.bh/AdvancedSearchDetails.aspx?id=146182#.XkE3L2hKjDc|
|Barbados|"Bill - Data Protection passed in Senate and House of Assembly 2019 (in English)"|https://www.barbadosparliament.com/uploads/bill_resolution/7b81b59260896178b5aa976fdb87bfee.pdf|
|Belarus|"Law Of The Republic Of Belarus On Information Informatization and Protection of information No. 455-Z/2008 (In Russian)"|http://pravo.by/document/?guid=3871&p0=h10800455|
|Belarus|"Law Of The Republic Of Belarus On Information Informatization and Protection of information No. 455-Z/2008 (in English unofficial translation)"|http://www.e-belarus.org/docs/informationlawdraft.html|
|Belgium|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Belgium|Law on electronic communication (amended in 2014) (in English)|https://www.legislationline.org/download/id/5514/file/Belgium_Privacy_Act_1992_as_of_2014_en.pdf|
|Benin|Loi n° 2017-20 portant code du numérique en République du Bénin (in French)|https://www.afapdp.org/wp-content/uploads/2018/06/Benin-Loi-2017-20-Portant-code-du-numerique-en-Republique-du-Benin.pdf|
|Bhutan|"Bhutan Information Communications and Media Act 2018 (in English and Dzongkha)"|https://www.dit.gov.bt/information-communications-and-media-act-bhutan-2018|
|Bolivia (Plurinational State of)|"Ley general de Telecomunicaciones Tecnologías de Información y Comunicación – Ley 167 de 08 agosto de 2011 (in Spanish)"|https://www.wipo.int/edocs/lexdocs/laws/es/bo/bo052es.pdf|
|Bosnia and Herzegovina|Law on the Protection of Personal Data (Unofficial in English)|https://rm.coe.int/CoERMPublicCommonSearchServices/DisplayDCTMContent?documentId=09000016806af037|
|Bosnia and Herzegovina|General regulations of the Personal Data Protection Agency (in English)|http://www.azlp.ba/propisi/default.aspx?id=8&langTag=en-US&template_id=149&pageIndex=1|
|Botswana|Bill - Data protection Law 2018 (in English)|https://www.bocra.org.bw/sites/default/files/documents/DataProtectionAct.pdf|
|Brazil|Protection of Personal Data Bill 2011 (in Portuguese)|http://participacao.mj.gov.br/dadospessoais/texto-em-debate/anteprojeto-de-lei-para-a-protecao-de-dados-pessoais/|
|Brazil|"Internet Act (Law Nº 12.965 April 23rd 2014). Articles 7 and 8 (in Portuguese)"|http://www.planalto.gov.br/ccivil_03/_ato2011-2014/2014/lei/l12965.htm|
|Brazil|General Data Privacy Law (in Portuguese)|http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/lei/L13709.htm|
|Bulgaria|Law for Protection of Personal Data (in English)|https://www.cpdp.bg/en/index.php?p=element&aid=1194|
|Bulgaria|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Burkina Faso|Loi n° 010-2004/AN Portant Protection des Données à Caractère Personnel (in French)|http://www.afapdp.org/wp-content/uploads/2012/01/Burkina-Faso-Loi-portant-protection-des-donn%C3%A9es-%C3%A0-caract%C3%A8re-personnel-20042.pdf|
|Cambodia|Article 32 of the Law on Electronic Commerce (2019) (in English)|https://www.ccfdg.gov.kh/pdf-view/?filename=https://www.ccfdg.gov.kh/wp-content/uploads/2021/02/Khmer_Law-on-E-Commerce.pdf  |
|Cameroon|Loi n*2010/012 du 21 décembre 2010 relative à la cybersécurité et à la cybercriminalité (in French)|http://www.art.cm/sites/default/files/documents/loi_2010-012_cybersecurite_cybercriminalite.pdf|
|Canada|Personal Information Protection and Electronic Documents Act (in English and French)|https://laws-lois.justice.gc.ca/PDF/P-8.6.pdf|
|Cape Verde|Regime Jurídico Geral de Protecção de Dados Pessoais a Pessoas Singulares Lei n° 133/V/2001 of 22 January 2001 (in Portuguese)|http://www.afapdp.org/wp-content/uploads/2012/01/Cap-vert-Lei-n%C2%B0133-V-2001-do-22-janeiro-20011.pdf|
|Chad|Law 007/PR/2015 on the Protection of Personal Data (in French and Arabic)|https://arcep.td/sites/default/files/Loi-N%C2%B007-PR-2015.pdf|
|Chile|Law 19.628 (in Spanish)|http://www.leychile.cl/Navegar?idNorma=141599|
|Chile|Boletín N° 11144-07 (in Spanish)|https://www.camara.cl/legislacion/ProyectosDeLey/tramitacion.aspx?prmID=11661&prmBoletin=11144-07|
|China|"The Decision of the Standing Committee of the National People's Congress on Strengthening the Network Information Protection 2012 (In English unofficial translation)"|https://chinacopyrightandmedia.wordpress.com/2012/12/28/national-peoples-congress-standing-committee-decision-concerning-strengthening-network-information-protection/|
|China|"The Decision of the Standing Committee of the National People's Congress on Strengthening the Network Information Protection 2012 (in Chinese)"|http://www.gov.cn/jrzg/2012-12/28/content_2301231.htm|
|Colombia|Ley 1581 de 2012 - Marco general de la protección de los datos personales en Colombia (in Spanish)|https://www.funcionpublica.gov.co/eva/gestornormativo/norma_pdf.php?i=49981|
|Congo|Loi n° 29-2019 du 10 octobre 2019 portant protection des données à caractère personnel (in French)|https://www.sgg.cg/JO/2019/congo-jo-2019-45.pdf|
|Costa Rica|"Political Constitution of the Republic of Costa Rica consolidated version to October 5 2005 (in English)"|http://www.wipo.int/wipolex/en/text.jsp?file_id=219959|
|Costa Rica|"Constitución Política de la República de Costa Rica versión refundida al 5 de octubre de 2005 (in Spanish)"|http://www.wipo.int/wipolex/en/text.jsp?file_id=219833|
|Costa Rica|Ley de protección de la persona frente al tratamiento de sus datos personales - Ley n.º 8968 (in Spanish)|http://www.oas.org/es/sla/ddi/docs/CR4%20Ley%20de%20Protecci%C3%B3n%20de%20la%20Persona%20frente%20al%20Tratamiento%20de%20sus%20Datos%20Personales.pdf|
|Côte d'Ivoire|Loi n° 2013-450 du 19 juin 2013 relative à la protection des données à caractère personnel (in French)|http://media.mofo.com/files/PrivacyLibrary/3979/Cote-d-voire-loi_2013_450.pdf|
|Croatia|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Croatia|Act on Personal Data Protection (in English)|http://www.right2info.org/resources/publications/laws-1/croatia-personal-data-protection-act/view|
|Cyprus|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Cyprus|The Processing of Personal Data (Protection of the Individual) Law (in English)|http://www.dataprotection.gov.cy/dataprotection/dataprotection.nsf/2B53605103DCE4A4C225826300362211/$file/Law 125(I) of 2018 ENG final.pdf|
|Czech Republic|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Czech Republic|Act No. 11/2019 on changes related to Act on Processing Personal Data (In Czech)|https://aplikace.mvcr.cz/sbirka-zakonu/ViewFile.aspx?type=z&id=63840|
|Czech Republic|Act No. 110/2019 on Processing of Personal Data (In Czech)|https://aplikace.mvcr.cz/sbirka-zakonu/ViewFile.aspx?type=z&id=63839|
|Denmark|Act on Processing of Personal Data (in Danish)|https://www.retsinformation.dk/Forms/R0710.aspx?id=201319|
|Denmark|Act on Processing of Personal Data (in English)|https://rm.coe.int/16806af0e6|
|Denmark|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Dominica|Bill - Privacy and Data Protection||
|Dominican Republic|"Ley No. 172-13 sobre Protección de Datos de Carácter Personal del 13 de diciembre de 2013 (in English)"|https://indotel.gob.do/media/6200/ley_172_13.pdf|
|Ecuador|Protection of Privacy and Personal Data Bill 2019 (in Spanish)|https://www.nmslaw.com.ec/wp-content/uploads/2019/09/Proyecto-de-Ley-Org%C3%A1nica-de-Protecci%C3%B3n-de-Datos-Personales.pdf|
|Egypt|"Personal Data Protection Law Law No. 151 of 2020 (in Arabic)"|https://mcit.gov.eg/Upcont/Documents/Reports and Documents_1232021000_Law_No_151_2020_Personal_Data_Protection.pdf|
|El Salvador|Bill - Ley de Comercio Electronico y Comunicaciones (in Spanish)|https://www.asamblea.gob.sv/sites/default/files/documents/correspondencia/2A326CE8-F13A-4828-8640-648235C228BF.pdf|
|Equatorial Guinea|"Law No. 1/2016 Law on Personal Data Protection"|https://platform.dataguidance.com/notes/equatorial-guinea-data-protection-overview|
|Estonia|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Estonia|Data Protection Act (in English)|https://www.riigiteataja.ee/en/eli/ee/529012015008/consolide/current|
|Eswatini|"Bill Data Protection 2013"||
|Finland|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Finland|"Personal Data Act (in English unofficial translation)"|http://www.finlex.fi/en/laki/kaannokset/1999/19990523|
|France|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|France|Law relating to the protection of individuals against the processing of personal data (in English)|http://www.cnil.fr/fileadmin/documents/en/Act78-17VA.pdf|
|France|"Loi 78-17 du 6 janvier 1978 relative à l'informatique aux fichiers et aux libertés modifiée (in French)"|http://www.cnil.fr/fileadmin/documents/approfondir/textes/CNIL-78-17_definitive-annotee.pdf|
|Gabon|Loi n°001/2011 relative à la protection des données à caractère personnel (in French)|http://www.afapdp.org/wp-content/uploads/2012/01/Gabon-Loi-relative-%C3%A0-la-protection-des-donn%C3%A9es-personnelles-du-4-mai-20112.pdf|
|Gambia|Information and Communications Act  No. 2 of 2009 (in English)|http://www.pura.gm/wp-content/uploads/2018/01/IC-Info-Comms-Act-2009.pdf|
|Gambia|Bill to be enforced in 2020 : Data protection and Privacy Policy |http://www.pura.gm/wp-content/uploads/2019/08/Data-Protection-and-Privacy-Draft-Policy-and-Strategy-August-2019.pdf|
|Georgia|Law of Georgia on Personal Data Protection (in English)|https://matsne.gov.ge/en/document/download/1561437/7/en/pdf|
|Georgia|Law of Georgia on Personal Data Protection (in Georgian)|https://matsne.gov.ge/en/document/view/1561437?impose=original|
|Germany|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Germany|Federal Data Protection Act (in English)|https://www.gesetze-im-internet.de/englisch_bdsg/|
|Germany|Bundesdatenschutzgesetz - BDSG (in German)|https://www.gesetze-im-internet.de/bdsg_2018/BJNR209710017.html|
|Ghana|Data Protection Act (Act No. 843) 2012 - DPA (in English)|http://media.mofo.com/files/PrivacyLibrary/3981/GHANAbill.pdf|
|Greece|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Greece|Law No. 4624/2019 Hellenic Data Protection Authority (HDPA) (in Greek)|"https://www.dpa.gr/APDPXPortlets/htdocs/documentSDisplay.jsp?docid=66|121|83|229|125|127|247|242"|
|Guatemala|Iniciativa de Ley Número 4090 del Congreso de la República de Guatemala Ley de Protección de Datos Personales (in Spanish)|https://www.congreso.gob.gt/assets/uploads/info_legislativo/iniciativas/Registro4090.pdf|
|Guinea|Loi L/2016/037/AN relative à la cyber-sécurité et la protection des données à caractère personnel (in French)|https://mpten.gov.gn/wp-content/uploads/2019/06/loi_l2016037an_relative_a_la_cybersecurite_et_protection_des_do.pdf|
|Guyana|Draft Data Privacy Bill 2020||
|Honduras|Ley de trasnparencia y accesso a la información pública DECRETO No. 170‐2006 (in Spanish)|http://www.oas.org/es/sla/ddi/docs/H2 LeyDeTransparencia.pdf|
|Hungary|Act CXII of 2011 on the right to informational self-determination and on the freedom of information (in Hungarian)|http://njt.hu/translated/doc/J2011T0112P_20200101_FIN.PDF |
|Hungary|Act CVIII of 2001 on the certain aspects of electronic commerce services and information society services (in Hungarian)|https://njt.hu/jogszabaly/2001-108-00-00|
|Hungary|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Iceland|Data protection and the Processing of Personal Data Law No.90/2018 (in English)|https://www.personuvernd.is/media/uncategorized/Act_No_90_2018_on_Data_Protection_and_the_Processing_of_Personal_Data.pdf|
|India|"Bill - Personal Data Protection 2019 (in English)"|http://164.100.47.4/BillsTexts/LSBillTexts/Asintroduced/373_2019_LS_Eng.pdf|
|India|Information Technology Act 2000 (in English)|http://cc.tifrh.res.in/webdata/documents/events/facilities/IT_act_2008.pdf|
|Indonesia|Personal Data Protection in Electronic Systems Regulation 2016 (in English)||
|Indonesia|Systems Regulation 2016 (in English)|http://zaico.nl/files/RUU-ITE_english.pdf|
|Iran (Islamic Republic of)| Bill - Protection of Data and Privacy in the Cyber Space 2018||
|Iran (Islamic Republic of)|Electronic Commerce Law - General Law (in Persian) |http://www.ilo.org/dyn/natlex/docs/ELECTRONIC/91715/106512/F1311829502/IRN91715.pdf|
|Iraq|Bill - Data Protection and Privacy Law||
|Ireland|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Ireland|"Data Protection Act 1988 (in English)"|http://www.irishstatutebook.ie/1988/en/act/pub/0025/print.html|
|Israel|Privacy Protection Act No.5741/1981 and 5752/1992 (in English)|http://www.wipo.int/wipolex/en/text.jsp?file_id=347462|
|Italy|Data Protection Code Decree No. 196/2003 (in English)|http://www.privacy.it/archivio/privacycode-en.html|
|Italy|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Italy|"Decreto Legislativo 30 giugno 2003 n. 196 - Codice in materia di protezione dei dati personali (in Italian)"|http://www.camera.it/parlam/leggi/deleghe/03196dl.htm|
|Jamaica|The Constitution of Jamaica (in English)|http://www.wipo.int/wipolex/en/text.jsp?file_id=214630|
|Jamaica|Data Protection Act 2020|"https://japarliament.gov.jm/attachments/article/341/The Data Protection Act 2020 No. 7.pdf"|
|Jamaica|Electronic Transactions Act No 15 of 2006 (in English)|http://moj.gov.jm/sites/default/files/laws/Electronic Transactions pgs. 1-34.pdf|
|Japan|"Act on the Protection of Personal Information (in English unofficial translation)"|http://www.cas.go.jp/jp/seisaku/hourei/data/APPI.pdf|
|Jordan|Data Protection Bill||
|Kazakhstan|"Law of the Republic of Kazakhstandated April 12 2004 No. 544 On Regulation of Trading Activities (in Russian)"|http://10.61.42.188/rus/docs/Z040000544_|
|Kenya|"The Data Protection Act 2019 (in English)"|http://kenyalaw.org/kl/fileadmin/pdfdownloads/Acts/2019/TheDataProtectionAct__No24of2019.pdf|
|Republic of Korea|"Personal Information Protection Act (in English Korean)"|https://law.go.kr/LSW/eng/engLsSc.do?menuId=2&section=lawNm&query=Personal+Information+Protection+Act&x=0&y=0|
|Kuwait|Law No. 20 of 2014 (in English)|http://www.informatica-juridica.com/etiqueta/law-no-20-of-2014-concerning-electronic-transactions/|
|Kyrgyzstan|Personal Data No.58/2008 |https://www.legislationline.org/download/id/4220/file/Kyrgyz_Law_personal_data_2008_EN.pdf|
|Lao People's Democratic Republic|Law on Electronic Data Protection (in Laocian)|https://laoofficialgazette.gov.la/kcfinder/upload/files/0918570.pdf|
|Latvia|Personal Data Processing Law|https://likumi.lv/ta/en/en/id/300099-personal-data-processing-law|
|Latvia|Amendments to the Electronic Communications Law - point 2 (in Latvian)|https://www.vestnesis.lv/op/2020/21.1|
|Lebanon|Law No. 81 Relating to Electronic Transactions and Personal Data|https://cyrilla.org/api/files/1588765194459b2ei80i27m.pdf|
|Lesotho|Data Protection Act No. 19 2012 (in English)|http://www.nic.ls/lsnic/community/policies/Data_Protection_Act_2011_Lesotho.pdf|
|Liechtenstein|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Liechtenstein|"Gesetz über die Abänderung des Datenschutzgesetzes 2002 (in German)"|http://www.wipo.int/edocs/lexdocs/laws/de/li/li069de.pdf|
|Lithuania|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Lithuania|Law on Legal Protection of Personal Data (in English)|http://www.wipo.int/wipolex/en/text.jsp?file_id=202094|
|Luxembourg|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Luxembourg|Data Protection Law (in French)|http://legilux.public.lu/eli/etat/leg/loi/2002/08/02/n2/jo|
|Madagascar|Law No. 38/2014 Protection of personal data (in French)|http://www.afapdp.org/wp-content/uploads/2015/01/Madagascar-L-2014-038-du-09-01-15-sur-la-protection-des-donn%C3%A9es-%C3%A0-caract%C3%A8re-personnel.pdf|
|Malawi|"Electronic Transactions and Cyber Security Act 2016 (in English)"|https://www.macra.org.mw/?wpdmpro=electronic-transaction-and-cyber-security-act-2016|
|Malaysia|Personal Data Protection Act 2010 (in English)|http://www.kkmm.gov.my/pdf/Personal Data Protection Act 2010.pdf|
|Maldives|Bill - Law coming on Q3 2020||
|Mali|Loi sur la protection des données à caractère personnel - Loi n° 2013-015 du 21 mai 2013 (in French)|http://www.afapdp.org/wp-content/uploads/2012/01/Mali-Loi-sur-la-protection-des-donn%C3%A9es-personnelles-du-21-mai-2013.pdf|
|Malta|"Data Protection Act Cap 586 (in English)"|https://maltacvs.org/wp-content/uploads/2019/05/Data-Protection-Act.pdf|
|Malta|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Mauritania|Loi 2017-020 sur la protection des données à caractère personnel (in French)|http://tic.gov.mr/IMG/pdf/imp1fr-2.pdf|
|Mauritius|Data Protection Act No. 20/2017 (in English)|https://www.ilo.org/dyn/natlex/docs/ELECTRONIC/108724/134563/F686980207/MUS108724.pdf|
|Mexico|Ley General de Protección de Datos Personales en posesión de sujetos obligados (In Spanish)|http://www.diputados.gob.mx/LeyesBiblio/pdf/LGPDPPSO.pdf|
|Mexico|Ley Federal de Protección de Datos Personales en Posesión de los Particulares 2010 (in Spanish)|http://www.diputados.gob.mx/LeyesBiblio/pdf/LFPDPPP.pdf|
|Mexico|"Convenio para la Protección de las Personas con respecto al Tratamiento Automatizado de Datos de Carácter Personal y Protocolo Adicional al Convenio para la Protección de las Personas con Respecto al Tratamiento Automatizado de Datos de Carácter Personal a las Autoridades de Control y los Flujos Transfronterizos de Datos (Decreto Promulgatorio) (in Spanish)"|https://www.dof.gob.mx/nota_detalle.php?codigo=5539473&fecha=28/09/20|
|Mexico|Lineamientos Generales de Protección de Datos Personales para el Sector Público (In Spanish) |http://inicio.inai.org.mx/AcuerdosDelPleno/ACT-PUB-19-12-2017.10.pdf                           https://home.inai.org.mx/wp-content/documentos/AcuerdosDelPleno/ACT-PUB-11-11-2020.05.pdf|
|Mexico|Reglamento Ley Federal de Protección de Datos Personales en Poesesión de Particulares (in Spanish)|http://www.diputados.gob.mx/LeyesBiblio/regley/Reg_LFPDPPP.pdf|
|Mexico|Ley General de Transparencia y Acceso a la Información Pública (in Spanish)|http://www.diputados.gob.mx/LeyesBiblio/pdf/LGTAIP_200521.pdf|
|Mexico|Ley Federal de Transparencia y Acceso a la Información Pública (in Spanish)|http://www.diputados.gob.mx/LeyesBiblio/pdf/LFTAIP_200521.pdf|
|Monaco|"Loi No. 1.165/1996 consolidée par la loi No.1 462/2018 (in French)"|https://journaldemonaco.gouv.mc/Journaux/2018/Journal-8389/Loi-n-1.462-du-28-juin-2018-renforcant-le-dispositif-de-lutte-contre-le-blanchiment-de-capitaux-le-financement-du-terrorisme-et-la-corruption|
|Mongolia|"Law on information transparency and right to information 2011 (updated in 2015)"|https://www.iaac.mn/old/pdf/law_en/6_law_on_the_information_transparency_and_right_to_information.pdf|
|Montenegro|" Law on Protection of Personal Data No. 79/2009 70/2009 44/2012 22/2017 (in English)"|http://www.afapdp.org/wp-content/uploads/2012/01/Mont%C3%A9n%C3%A9gro-Personal-Data-Protection-Law-79-08-and-70-09.pdf|
|Morocco|Law No. 09-08/2009 on the protection of people toward data protection of a personal nature (in French)|https://www.dgssi.gov.ma/sites/default/files/attached_files/loi_09-08protection_donnees_personnelles.pdf|
|Myanmar|Bill -  Cyber Security Law and privacy and data protection ||
|Namibia|Bill - Electronic Transaction Act of 2019 (in English)|https://laws.parliament.na/cms_documents/electronic-transactions-e6007fa08d.pdf|
|Nepal|"The Privacy Act 2018 (in English)"|http://www.lawcommission.gov.np/en/wp-content/uploads/2019/07/The-Privacy-Act-2075-2018.pdf|
|Netherlands|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Netherlands|Personal Data Protection Act 1998 (in Dutch)|http://wetten.overheid.nl/BWBR0011468/geldigheidsdatum_04-07-2011|
|Netherlands|"Personal Data Protection Act (in English unofficial translation)"|http://www.legislationline.org/documents/action/popup/id/5342|
|New Zealand|Privacy Act 1993 (in English)|http://www.legislation.govt.nz/act/public/1993/0028/latest/DLM296639.html|
|Nicaragua|Ley No. 787 Ley de Protección de Datos Personales (in Spanish)|http://www.pgr.gob.ni/PDF/Constitucional/ley 787.pdf|
|Niger|"Loi n°2017-28 du 03 Mai 2017 relative à la protection des données à caractère personnel révisé en 2019 (in French)"|https://www.afapdp.org/wp-content/uploads/2017/02/Loi-n%c2%b02017-28-du-03-mai-2017.pdf|
|Nigeria|Nigerian Data Protection Regulation 2019 (in English)|https://ndpr.nitda.gov.ng/Content/Doc/NigeriaDataProtectionRegulation.pdf|
|Norway|Personal Data Act 2018 (in Norwegian) Lov om behandling av personopplysninger (personopplysningsloven) - Lovdata|
|Norway|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Norway|Personal Data Act 2000 (in English)|https://www.legislationline.org/download/id/5545/file/Norway_Personal_Data_Act_am2012_en.pdf|
|Oman|Royal Decree no. 69 of 2008 - Electronic Transactions Law (in English)|http://www.cert.gov.om/library/information/Electronic Transactions Law English.pdf|
|Pakistan|Bill - Electronic Data Protection Act 2005 (in English)|http://media.mofo.com/docs/mofoprivacy/PAKISTAN Draft Law 2nd Revision .pdf|
|Panama|"Ley 81 Protección de datos personales 2019 (in Spanish)"|https://www.gacetaoficial.gob.pa/pdfTemp/28743_A/GacetaNo_28743a_20190329.pdf|
|Paraguay|Ley 1682/2001 Reglamenta la Informacion de Caracter Privado (in Spanish)|http://www.oas.org/es/sla/ddi/docs/PA6 Ley N 1682 de 2001.pdf|
|Paraguay|"Ley Nº 1969/2002 “Que modifica amplía y deroga varios artículos de la Ley Nº 1682/2001” (in Spanish)"|http://digesto.senado.gov.py/ups/leyes/10389.pdf|
|Paraguay|Ley Nº 5543/2015 “Que modifica parcialmente la Ley Nº 1969/2002” (in Spanish)|http://www.bacn.gov.py/archivos/4524/20160224131953.pdf |
|Paraguay|Ley Nº 5830/2017 “Que prohíbe la publicidad no autorizada por los usuarios titulares de telefonía móvil” (in Spanish)|https://drive.google.com/file/d/1Sa1-pI1tCPffeTVqNCiVb-tLyvjHBzlx/view|
|Paraguay|Decreto Nº 8000/2017 “Por el cual se reglamenta la Ley 5830/2017 Que prohíbe la publicidad no autorizada por los usuarios titulares de telefonía móvil” (in Spanish)|https://drive.google.com/file/d/1YJGCA1i7W5Ok_t_JlNkSXw8ae__zdQG-/view |
|Paraguay|Resolución Nº 80/2018 “Por la cual se aprueba la normativa reglamentaria de la Ley Nº 5830 Que prohíbe Que prohíbe la publicidad no autorizada por los usuarios titulares de telefonía móvil” (in Spanish)|https://drive.google.com/file/d/1Uzc78s9ZSTOGPwmcn1kRVHTp9U_EwKle/view |
|Peru|Ley N° 29733 - Ley de Protección de Datos Personales (in Spanish)|http://doc.contraloria.gob.pe/documentos/Cuadro_Ley_Proteccion_Datos_Personales.pdf|
|Philippines|Data Privacy Act of 2012 (in English)|http://www.lawphil.net/statutes/repacts/ra2012/ra_10173_2012.html|
|Poland|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Poland|Act on the Protection of Personal Data 1997 (in English)|http://www.giodo.gov.pl/144/id_art/171/j/en/|
|Portugal|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR) (in Portuguese)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Portugal|Law 58/2019 of August 8th (in Portuguese)|https://temp.dre.pt/pesquisa/-/search/123815982/details/maximized|
|Portugal|Law 41/2004 (In Portuguese)|https://www.anacom.pt/render.jsp?contentId=976164|
|Portugal|Decree-Law  7/2004 (In Portuguese)|https://dre.pt/dre/detalhe/decreto-lei/7-2004-240775|
|Portugal|"Lei No. 13 709/2018 Protecao de Dados Pessoais (in Portuguese)"|http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2018/Lei/L13709.htm|
|Qatar|Law No. 13 of 2016 Concerning Privacy and Protection of Personal Data (in Arabic)|https://www.ilo.org/dyn/natlex/natlex4.detail?p_lang=en&p_isn=105417&p_country=QAT&p_classification=01|
|Republic of Korea|"Personal Information Protection Act 2020 (In Korean)"|http://www.law.go.kr/LSW/eng/engLsSc.do?menuId=2&section=lawNm&query=personal+&x=0&y=0|
|Republic of Moldova|Law No. 133/2011 on personal data Protection (in Russian)|http://ilo.ch/dyn/natlex/natlex4.detail?p_lang=en&p_isn=89948&p_count=100183&p_classification=01&p_classcount=13206|
|Romania|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Romania|GDPR implementation law (in Romanian)|https://privacyon.ro/wp-content/uploads/2018/12/Romanian-GDPR-implementation-law-English-translation.pdf|
|Romania|Law No. 102/2005 on the organisation and the fonctioning of the National Supervisorz Authoritz for Personal Data Processing (in Romanian)|https://www.dataprotection.ro/servlet/ViewDocument?id=172|
|Russian Federation|Bill - Regarding Personal Data |http://wko.at/ooe/Branchen/Industrie/Zusendungen/FEDERAL_LAW.pdf|
|Russian Federation|"Federal law No. 152-FZ of 27 July 2006 ""On Personal Data"" (with the latest amendments of 2 July 2021) (in Russian)"|http://pravo.gov.ru/proxy/ips/?docbody&nd=102108261 |
|Rwanda|"Bill - Personal Data Protection 2019 (in French English and Kinyarwanda)"|https://www.dataguidance.com/sites/default/files/30802b_965abe73ea2e48899a28a4aefe2d3705.pdf|
|Saint Kitts and Nevis|Data Protection Act 2018 (in English)|https://www.dataguidance.com/sites/default/files/data_protection_act_5_of_2018.pdf|
|Saint Lucia|Data Protection Act 2011 (in English)|http://slugovprintery.com/template/files/document_for_sale/laws/3547/Act 2 of 2015.pdf|
|Saint Vincent and the Grenadines|Bill - Data Protection Act - OECS models (in English)|https://www.oecs.org/our-work/knowledge/library/egrip/data-protection-act|
|San Marino|Law regulating the Computerized Collection of Personal Data 1983|https://www.consigliograndeegenerale.sm/on-line/home/archivio-leggi-decreti-e-regolamenti/scheda17014317.html|
|Sao Tome and Principe|Data Protection Law 2016. Lei N° 3/2016 - Protecção de Dados Pessoais (in Portuguese)|https://www2.camara.leg.br/saotomeeprincipe/diarios-da-an/x-legislatura/ii-serie/3.a-sessao-legislativa/DAN01-IIS.pdf/view|
|Saudi Arabia|Bill - Freedom of Information and Protection of Private data||
|Senegal|LOI n° 2008-12 du 25 janvier 2008 portant sur la Protection des données à caractère personnel (in French)|http://www.centif.sn/Loi_2008_12.pdf|
|Serbia|Data Protection Act (in English) Refworld  Serbia: 2018 Law on Personal Data Protection|
|Serbia|Law on Personnal Data Protection N°97/08 (in English)|http://www.refworld.org/pdfid/4b5718f52.pdf|
|Seychelles|Bill - The Data Protection  No. 9 of 2003 (in English)|http://greybook.seylii.org/se/2003-9|
|Singapore|Personal Data Protection Act No. 26 2012 (in English)|https://sso.agc.gov.sg/Act/PDPA2012|
|Slovakia|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Slovakia|Act 18/2018 on the Protection of Personal Data (in English)|https://dataprotection.gov.sk/uoou/sites/default/files/2019_10_03_act_18_2018_on_personal_data_protection_and_amending_and_supplementing_certain_acts.pdf#overlay-context=sk/content/182018#overlay-context=sk/content/182018%22|
|Slovakia|Act on the Protection of Personal Data 1992 (in English)|https://dataprotection.gov.sk/uoou/en/content/national-legal-framework|
|Slovenia|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Slovenia|Personal Data Protection Act (ZVOP-1) (in Slovenian)|http://pisrs.si/Pis.web/pregledPredpisa?id=ZAKO3906# |
|South Africa|Protection of Personal Information Act 4 of 2013 (in English)|http://www.justice.gov.za/inforeg/docs.html|
|Spain|The General Data Protection Regulation (Regulation (EU) 2016/679) (GDPR)|https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32016R0679|
|Spain|"Ley Orgánica 3/2018 de 5 de diciembre de Protección de Datos Personales y garantía de los derechos digitales (in Spanish)"|https://www.boe.es/eli/es/lo/2018/12/05/3/con|
|Suriname|"The Constitution of the Republic of Suriname Article 17 (in English)"|http://www.parliament.am/library/sahmanadrutyunner/surinam.pdf|
|Sweden|Data Protection Act (in Swedish)|https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/lag-2018218-med-kompletterande-bestammelser_sfs-2018-218|
|Sweden|Personal Data Act 1998 (in English)|http://www.qcert.org/sites/default/files/public/documents/swe-privacy-personal_data_act-eng-1998.pdf |
|Switzerland|"Federal Act on Data Protection 1992 (in English)"|https://www.admin.ch/opc/en/classified-compilation/19920153/|
|Tajikistan|"8in Russia)Law of the Republic of Tajikistan No 1537 about Personal Data Protection 2018 "|https://cis-legislation.com/document.fwx?rgn=108952|
|Thailand|"Personal Data Protection Act B. E. 2562 2019 (in Thai)"|https://www.etda.or.th/app/webroot/content_files/13/files/The Personal Data Protection Act.pdf|
|North Macedonia|"Law on Personal Data Protection (in English unofficial translation)"|https://www.legislationline.org/download/id/1247/file/22fb16d752a9b7737b6fc8252ba5.pdf|
|Togo|Loi No. 14/2019 relativbe a la protection des donnees a caractere personnelle (In French)|https://jo.gouv.tg/sites/default/files/JO/JOS_29_10_2019-64E ANNEE-N%C2%B026 TER.pdf#page=1|
|Trinidad and Tobago|Data Protection Act 2011 (in English)|http://www.ttparliament.org/legislations/a2011-13.pdf|
|Trinidad and Tobago|The Constitution of the Rpublic of Trinidad and Tobago (in English)|http://www.oas.org/juridico/english/mesicic3_tto_constitution.pdf|
|Tunisia|Loi organique No. 63/2004 portant sur la protection des données à caractère personnelles (in Arabic)|http://www.ins.tn/sites/default/files/Loi 63-2004 Fr.pdf|
|Tunisia|Organic Act No. 63/2004 on the protection of personal data (in Arabic)|https://media2.mofo.com/documents/The+Organic+Act+2004-63.pdf|
|Turkey|"Law on the Protection of Personal Data No. 6698 2016 (In Turkish)"|http://www.resmigazete.gov.tr/eskiler/2016/04/20160407-8.pdf|
|Turkmenistan|Law on Information on Private Life and its Protection No. 519-V (in Russian)|https://www.ilo.org/dyn/natlex/docs/ELECTRONIC/107056/131641/F419973633/519.pdf|
|Uganda|The Data Protection and Privacy Act 2019 (in English)|https://ict.go.ug/wp-content/uploads/2019/03/Data-Protection-and-Privacy-Act-2019.pdf|
|Ukraine|Law on Information Protection in Information and Telecommunication Systems (in Russian)|https://zakon.rada.gov.ua/laws/show/80/94-%D0%B2%D1%80#Text|
|Ukraine|Law on State Secrets (in Russian)|https://zakon.rada.gov.ua/laws/show/3855-12#Text|
|Ukraine|Law on Personal Data Protection (in Russian)|https://zakon.rada.gov.ua/laws/show/2297-17#Text|
|Ukraine|On protection of Personal Data No. 2267-VI (in Russian)|https://zakon.rada.gov.ua/laws/show/2657|
|United Arab Emirates|Currently on draft and under study for approval. Expected publish 2022.||
|United Kingdom of Great Britain and Northern Ireland|Data Protection Act 1998 (in English)  |http://www.legislation.gov.uk/ukpga/1998/29/contents|
|United Kingdom of Great Britain and Northern Ireland|Data Protection Act 2018 (in English)|https://www.legislation.gov.uk/ukpga/2018/12/contents|
|United Republic of Tanzania|Data Protection Bill 2013 (in English)||
|United States of America|Privacy Act of 1974 (in English)|http://www.justice.gov/opcl/file/631151/download|
|United States of America|Federal Trade Commission Act 15 (in English)|https://www.ftc.gov/sites/default/files/documents/statutes/federal-trade-commission-act/ftc_act_incorporatingus_safe_web_act.pdf|
|Uruguay|La Ley 18.331 Protección de Datos Personales y Acción de Habeas Data del 11 agosto del año 2008 y el Decreto reglamentario 414/2009 (in Spanish)|https://www.impo.com.uy/bases/leyes/18331-2008|
|Uzbekistan|"Law No. ZRU-547 On Personal Data dated 2 July 2019 (in Russian)"|https://cis-legislation.com/document.fwx?rgn=116961|
|Viet Nam|Law on information technology 2006 (in English)|http://vbpl.vn/tw/Pages/vbpqen-toanvan.aspx?ItemID=4773|
|Viet Nam|Law on protection of consumers' rights 2010 (in English)||
|Yemen|Law of the Right of Access to Information 2012 (in English)|http://www.right2info.org/resources/publications/laws-1/laws_yemen|
|Zambia|"Data Protection Act 2021 (in English)"|https://www.parliament.gov.zm/sites/default/files/documents/acts/Act No. 3 The Data Protection Act 2021_0.pdf|
|Zimbabwe|Data Protection Act (In English)|https://www.veritaszim.net/sites/veritas_d/files/Data Protection Act 5 of 2021.pdf|



[![en](https://img.shields.io/badge/lang-en-red.svg)](Security.md)
[![dk](https://img.shields.io/badge/lang-da--dk-green.svg)](Security-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](Security-de.md)
[![main](https://img.shields.io/badge/main-document-blue.svg)](../README.md)