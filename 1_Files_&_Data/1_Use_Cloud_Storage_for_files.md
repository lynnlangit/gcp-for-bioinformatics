# Use Google Cloud File Storage


### Why do this
 - When your workload and data files are too big to run on your laptop
 - When you don't want to wait for time on your organization's shared cluster

### What is this
  Google Cloud Platform Cloud Storage is an online file storage web service for storing, accessing and transferring data files on the Google Cloud platform. 
  
  GCP Cloud Storage (or GCS) is frequently used as the input and output location for files when you run analysis (workflows or pipelines).

  Files are stored in buckets. Bucket usually contain folders for orgnaziation as well. Each bucket must have a globally unique name.  

### Key considerations
 Storage can be the most significant GCP service cost for bioinformatics (due to the number and size of files involved in analysis) so be careful to select the storage class that fits your analysis best i.e. multi-regional, regional.... so as not to pay for unused resources
 - Understand costs and selecting the best fit type of storage for your data [here](https://cloud.google.com/storage/docs/locations)
 - Understand storage class types (multi-regional, regional, nearline, coldline) [here](https://cloud.google.com/storage/docs/storage-classes)
 - Understand storage location options [here](https://cloud.google.com/about/locations)

### How to do this
 - CREATE a bucket with a unique name
 - CONFIGURE the bucket storage class type (see below)
 - CONFIGURE the bucket location 
 - CONFIGURE the bucket access control, encryption & retention
 - List of key [bucket operations](https://cloud.google.com/storage/docs/how-to)

 ----

 Shown below is the GCP WebUI to 'create a (storage) bucket. Note the bucket storage class options that are available to you.

 [![Cloud Storage types](/images/storage.png)]()

  <img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/bucket.png" width="460" align="right"> 

 Shown to the right is the GCP WebUI to set 'access control model' for a bucket. 
 
 Note that you can set model for access control and also the type of encyrption key storage for your bucket.

 You can also set a retention policy for the files in the bucket if you wish.

 -----

### How to verify you've done it
 - UPLOAD file(s) to the bucket using the web console or the 'gsutil' tool - [link](https://cloud.google.com/storage/docs/gsutil) - example shown below

 [![upload](/images/upload.png)]()

----

### 📺 Click below to see Lynn's 'Use Cloud Storage buckets' 10 min video
[![Cloud Storage Buckets - Google Cloud Platform for Bioinformatics](http://img.youtube.com/vi/_O2Lxc0UsNc/0.jpg)](http://www.youtube.com/watch?v=_O2Lxc0UsNc "Cloud Storage buckets - Google Cloud Platform for Bioinformatics")


### Other Things to Know
 - Work with files in buckets in a number of ways:
   - Click in GCS WebUI / console --or--
   - Authorized clients connect via `gsutil`, ex. `gs://demo-for-github` --or--
   - Authorized clients connect via an http call, ex. `https://console.cloud.google.com/storage/browser/demo-for-github`
 - Design file archiving processes, i.e. move to nearline or coldline if not accessing or over time (i.e. monthly...)
 - Delete files generated during processing (often called intermediate files) that are no longer needed when jobs complete
 - Read about 'requestor pays' Cloud Storage feature - [link](https://cloud.google.com/storage/docs/requester-pays)

### How to learn more
 - 📘 See examples of common genomic file types (i.e. FASTQ, BAM, VCF... ) - [link](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/4_FILE-TYPES.md)
 - 📘 See Best practices for Google Cloud Storage - [link](https://cloud.google.com/storage/docs/best-practices)
 - 📘 Learn how to host a static website on Cloud Storage - [link](https://cloud.google.com/storage/docs/hosting-static-website)
 - 📘 Use Parallel Composite File Uploads - [link](https://cloud.google.com/storage/docs/gsutil/commands/cp#parallel-composite-uploads)
 - 📘 Use the htsget protocol to access genomic data in GCP - [link](https://cloud.google.com/genomics/docs/how-tos/reading-data-htsget)
 - 📘 Use Cloud Storage FUSE to mount Cloud Storage buckets as file systems on Linux or macOS systems in GCP - [link](https://cloud.google.com/storage/docs/gcs-fuse)

