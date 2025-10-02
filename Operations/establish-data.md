![microsoft](images/microsoft.png)

# A data platform - Data establishment

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-dk-red.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.md)

## Data establishment

Guiding principles

1. Legislation like the European GDPR or the CCPA from California must be adhered to.
2. Data can only be used in the context of which they are collected.
3. Development cannot be done on production data.
4. Distinguish between the storage of data - “security” - and the usage of data - “privacy”.

The main technical mechanisms we use in the Azure platform to ensure right handling in the environments will be the following:

1. Data classification - makes it possible to understand the nature of the data we are dealing with.
2. Environment separation - by separating the environments mixture of data can be avoided. This enables a much simpler governance process.
3. Azure politics - using politics ensures that general paradigms like ISO27XXX, NIST or the like are being followed in all environments.
4. Tagging - helps identify important elements in each environment, like owner and environment type.
5. Encryption - using encryption, maybe using own keys, can be a mechanism security wise.

### Process for creating non-production *data*

The process of creating *data* that can be used in the non-production environments can be one (or more) of the following:

- Copy of production data.
- Data generation of fake data.
- Anonymization.
- Pseudonymization.
- Encryption + Dictionary.
- “No relations” *data* .

The method or methods being used will normally depend on the classification of the different data elements. For the purpose of establishing the classification of different *data*/*datasets*  a “database” should be maintained carrying this information. This should then be the “lookup” place to establish the right data processing.

### Data processing in detail

In this section we discuss the different possibilities that can be used to establish one or more *datasets*  in a non-production environment. You will most likely use a combination of these.

Important to EU-notice: pseudonymous data and anonymous data are treated differently under GDPR, the European Union data protection act. Reference EU-document

#### Copy of production data

Even though this is not a recommended approach sometimes it is possible and allowed to use (a subset of) production data in a non-production environment. These data will then most likely be marked as read-only.

- An Azure service suitable for this task would be Azure Data Factory copy pipelines.

#### Data generation of fake data

In this task you will create fake *data* based on the information of what datatype, length, pattern, content etc your *data* need to adhere to. It is important that this is real fake data and not data that is made fake from a production dataset.

Creating a fake set of data is most often a difficult task, so it is worth making sure that the process being established has some of the characteristics of being re-useable, automatic, scalable and parameterized.

Tools to create fake data within a Python environment, could be:
- Faker
- SDV
- Gretel

#### Anonymization

Anonymization is used when you can scramble a production dataset and bring it to a non-production environment. Anonymous data is data that has been changed so that re-identification of the individual is impossible.

The scrambling can be done in many ways, using different technics like noise addition, substitution, and aggregation.

It is important to notice that anonymization is a “one-way process”, where you will - and must - lose the ability to trace back to the original data. You must also not be able to use this data to connect and use *data* from other production *datasets*.

- Azure Data Factory data flows/Azure Databricks can be used for this, with the extension of Microsoft Presidio.

#### Pseudonymization

Pseudonymization is in essence the same process as Anonymization, with one big difference. Pseudonymous data is data that has been de-identified from the data’s origin but can be re-identified if needed.
Tokenization and hash functions can be used to pseudonymize data.

- Azure Data Factory data flows/Azure Databricks can be used for this.

#### Encryption + Dictionary

In this case you protect your *data* with an encryption key and only the people within the Dictionary of this data storage will be able to use the key. This key could be held in an Azure Key Vault.

>[!Note]
>This is not a valid GDPR “protection” mechanism because it “only” protects the access to the data, not the usage of the data.

#### “No relations” *datasets*

In this approach you create *datasets* that contain “real” data at a column level, so i.e., if you have a postal-code column then the postal-codes would be real, as well if you in the same record have a street name, that would also be real street names.

The “no relations” approach comes into play when data is being looked at from a row level perspective. In the above case the street name, house number and the postal code would logically make sense, but it will not exist physically.

So, an approach could be to build a set of different *datasets* representing items that is person related from open-source datasets - could be a database with street names in one *dataset*, all postal codes in another *dataset*, the 20 most common first names in a third *dataset*, the 20 most used last names in a fourth *datasets*  and so on.
And when creating a new row, random values are taken from these *datasets* and use these to create items like “persons”.

- Azure Data Factory *data* flows/Azure Databricks can be used for this.

[![en](https://img.shields.io/badge/lang-en-blue.svg)](README.md)
[![dk](https://img.shields.io/badge/lang-da-red.svg)](README-da.md)
[![de](https://img.shields.io/badge/lang-de-yellow.svg)](README-de.md)
[![main](https://img.shields.io/badge/main-document-green.svg)](../README.mdREADME.md)