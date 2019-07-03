# Use Public Reference Datasets

 [![gcp-genomics](/images/gcp-genomics.png)](https://cloud.google.com/genomics/docs/public-datasets/) 

### What is this
- Cloud Genomics provides a variety of public datasets that you can access for free and integrate into your research jobs
- An example is the 1000 Genomes dataset - [link](https://cloud.google.com/genomics/docs/public-datasets/1000-genomes)
- Google hosts these datasets, providing public access to the data via the BigQuery or Cloud Storage.


### Why do this
 - You want to use a reference file in cloud-based analysis
 - You want to save time by using a reference file that is already available in the cloud (no need to upload)

### Key considerations
 - Google adds more reference files as they become available

### How to do this
 - Interactive access is available in the BigQuery console. You can explore variant calls in case/control and cohort analysis. There are sample queries to help you get started. [GO TO CLOUD GENOMICS DATASETS IN BIGQUERY](https://bigquery.cloud.google.com/project/genomics-public-data)

 - File access is available from Cloud Storage. Files are available in BAM, VCF, and FASTA formats. Copy the files you need to local disk or a Compute Engine VM for access from your favorite bioinformatics tools. [GO TO THE CLOUD GENOMICS BUCKET IN CLOUD STORAGE](https://console.cloud.google.com/storage/genomics-public-data/)

### How to verify you've done it
 - Reference the file in a BigQuery query or a VM-based analysis

 See Lynn's 3 minute exploration of this section  
[![Public Reference Genomic Datasets on GCP](http://img.youtube.com/vi/4jfY9LmgHJk/0.jpg)](http://www.youtube.com/watch?v=4jfY9LmgHJk "Public Reference Genomic Datasets on GCP")

### Other Things to Know
 - None

### How to learn more
 - Link to [GCP Public Datasets](https://cloud.google.com/genomics/docs/public-datasets/)

 [![public-datasets](/images/public-datasets.png)](https://cloud.google.com/genomics/docs/public-datasets/)