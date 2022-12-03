#  Protect Data with DLP

## What is it?

Cloud Data Loss Prevention (DLP) is a fully managed service designed to help you discover, classify, and protect your most sensitive data.

Discover where sensitive data is located across your enterprise. Conduct continuous profiling to see a high-level overview and then perform -in-depth scans on tables of interest. Once you've discovered where the sensitive data is, you can then take steps to protect it.

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
 - 📓 Article: "Automate Classification of Data Uploaded to Cloud Storage" - [link](https://cloud.google.com/architecture/automating-classification-of-data-uploaded-to-cloud-storage)
 - 📗 Use the de-identification sensitive data service for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos/deidentify)
 - 📘 Use the 'how-to' guide for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos#fhir-guide)



