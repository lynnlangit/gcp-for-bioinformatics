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

## Key Features

The “de-identify findings” action for Cloud DLP inspection jobs is a fully managed feature that creates a **de-identified copy** of the data objects that are inspected. This means that you can inspect a Cloud Storage bucket for sensitive data like Personal Identifiable Information (PII) and then create a redacted copy of these objects all with a few clicks in the Console UI. No need to write custom code or manage complex pipelines and since it’s fully managed, it will auto-scale for you without you needing to manage quota. - more at [link](https://cloud.google.com/blog/products/identity-security/announcing-easier-de-identification-of-google-cloud-storage-data).

Cloud DLP provides a set of transformation techniques to de-identify sensitive data while attempting to make the data still useful for your business.  These techniques include: 

- Redaction: Deletes all or part of a detected sensitive value.
- Replacement: Replaces a detected sensitive value with a specified surrogate value.
- Masking: Replaces a number of characters of a sensitive value with a specified surrogate character, such as a hash (#) or asterisk (*).
- Crypto-based tokenization: Encrypts the original sensitive data value using a cryptographic key. Cloud DLP supports several types of tokenization, including transformations that can be reversed, or "re-identified."
- Bucketing: "Generalizes" a sensitive value by replacing it with a range of values. (For example, replacing a specific age with an age range, or temperatures with ranges corresponding to "Hot," "Medium," and "Cold.")
- Date shifting: Shifts sensitive date values by a random amount of time.
- Time extraction: Extracts or preserves specified portions of date and time values.

## Why and How to use it?

Create a job of type `risk analysis` for a Cloud Storage bucket, Big Query dataset or GCP Datastore.  Or you can choose to scan all data in an entire GCP Project (requires an Organization). Customize output (results) notifications - locations are within DLP, BigQuery dataset, Cloud Logging, Cloud Pub/Sub and others.

- Example: "De-identify PII using Cloud DLP" - [link](https://cloud.google.com/architecture/de-identification-re-identification-pii-using-cloud-dlp)


## Learn More / also De-identify data w/FIHR Store
 - 📺 Video and Article: "DLP Overview" - [link](https://cloud.google.com/blog/topics/developers-practitioners/cloud-data-loss-prevention-cloud-dlp-overview)
 - 📓 Article: "Automate Classification of Data Uploaded to Cloud Storage" - [link](https://cloud.google.com/architecture/automating-classification-of-data-uploaded-to-cloud-storage)
 - 📗 Use the de-identification sensitive data service for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos/deidentify)
 - 📘 Use the 'how-to' guide for FHIR store - [link](https://cloud.google.com/healthcare-api/docs/how-tos#fhir-guide)



