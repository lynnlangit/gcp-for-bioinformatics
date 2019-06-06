# Use Public Reference Datasets

[![public-datasets](/images/public-datasets.png)](https://cloud.google.com/genomics/docs/public-datasets/)

### What is this
- Cloud Genomics provides a variety of public datasets that you can access for free and integrate into your applications. Google hosts these datasets, providing public access to the data via the BigQuery or Cloud Storage.


### Why do this
 - You want to use a reference file in cloud-based analysis
 - You want to save time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - Google adds more reference files as they become available

### How to do this
 - Interactive access is available in the BigQuery console. You can explore variant calls in case/control and cohort analysis. There are sample queries to help you get started. For information on how to get started with public datasets in BigQuery, see BigQuery public datasets.

 - [GO TO CLOUD GENOMICS DATASETS IN BIGQUERY](https://bigquery.cloud.google.com/project/genomics-public-data)

 - File access is available from Cloud Storage. Files are available in BAM, VCF, and FASTA formats. Copy the files you need to local disk or a Compute Engine VM for access from your favorite bioinformatics tools. For information on how to get started with Cloud Storage, see How to use public datasets on Cloud Storage.

 - [GO TO THE CLOUD GENOMICS BUCKET IN CLOUD STORAGE](https://console.cloud.google.com/storage/genomics-public-data/)

### How to verify you've done it
 - Reference the file in a BigQuery query or a VM-based analysis

### Other Things to Know
 - None

### How to learn more
 - Link to [GCP Public Datasets](https://cloud.google.com/genomics/docs/public-datasets/)