#  Protect Data with DLP

## What is it?

Cloud Data Loss Prevention (DLP) is a fully managed service designed to help you discover, classify, and protect your most sensitive data.  Uses cases include those shown below (from GCP docs)

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/gcp-dlp.png" width=800>

Discover where sensitive data is located across your enterprise. Conduct continuous profiling to see a high-level overview and then perform -in-depth scans on tables of interest. Once you've discovered where the sensitive data is, you can then take steps to protect it.

## Use Cases

A partial list...
- Automatically discover sensitive data
- Classify data across your enterprise
- Protect sensitive data as you migrate to the cloud

## Why and How to use it?

Create a job of type `risk analysis` for a Cloud Storage bucket, Big Query dataset or GCP Datastore.  Or you can choose to scan all data in an entire GCP Project (requires an Organization). Customize output (results) notifications - locations are within DLP, BigQuery dataset, Cloud Logging, Cloud Pub/Sub and others.

- Example: "De-identify PII using Cloud DLP" - [link](https://cloud.google.com/architecture/de-identification-re-identification-pii-using-cloud-dlp)


## Learn More / also De-identify data w/FIHR Store
 - 📓 Article: "Automate Classification of Data Uploaded to Cloud Storage" - [link](https://cloud.google.com/architecture/automating-classification-of-data-uploaded-to-cloud-storage)
 - 📗 Use the de-identification sensitive data service for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos/deidentify)
 - 📘 Use the 'how-to' guide for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos#fhir-guide)



