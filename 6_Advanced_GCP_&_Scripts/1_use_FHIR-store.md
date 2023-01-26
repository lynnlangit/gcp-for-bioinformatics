#  Using FHIR Store

## What is it?

**Fast Healthcare Interoperability Resources (FHIR)** is a healthcare data standard with an application programming interface (API) for representing and exchanging electronic health records (EHR). FHIR is an information network that lets you link data across systems and a communication network that lets you exchange data between systems.

In GCP, there are the following services:
- A **FHIR store** is a data store in the Cloud Healthcare API that holds FHIR resources. FHIR stores exist inside datasets.
- **FHIR resources** which organize data formats and elements. Each resource has the following properties:
  - A shared method for defining and representing data, built upon data types consisting of reusable clusters of elements.
  - A common set of metadata, providing technical and structural context.
  - A human-readable text representation that uses HTML as a fallback display option for clinical safety.
  - Designed to support most clinical and billing use cases - you can extend to meet your requirements
- **FHIR Profiles** are a set of instructions in addition to the existing core specification for resources that fall under a specific use and context
  - The Cloud Healthcare API enforces profiles by validating resources against the constraints in the relevant profile.

## Why and How to use it?

Interoperability of patient records.  Steps from the GCP Quickstart - [link](https://cloud.google.com/healthcare-api/docs/store-healthcare-data-console)

### Step 0 - Prepare
 - ENABLE the Cloud Healthcare and Billing APIs
 - CREATE a new (empty) healthcare dataset 

### Step 1 - Setup and Load
 - CREATE a FHIR store instance
 - LOAD data
   - IMPORT public data `gs://gcp-public-data--synthea-fhir-data-10-patients/fhir_r4_ndjson/*.ndjson`

### Step 2 - View and Validate
 - VIEW data (select `patient`) resource type


## Learn More
 - 📓 Article: "Step-by-step setup for FHIR Store on GCP" - [link](https://kellrott.medium.com/using-google-fhir-to-support-research-8f726834d77)
 - 📗 Use the de-identification sensitive data service for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos/deidentify)
 - 📘 Use the 'how-to' guide for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos#fhir-guide)
 - 📓 Article: "Analyzing FHIR data in BigQuery" - [link](https://cloud.google.com/architecture/analyzing-fhir-data-in-bigquery)

