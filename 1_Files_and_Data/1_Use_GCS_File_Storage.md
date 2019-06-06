# Use Google Cloud File Storage



### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster


### What is this
 - Using GCP service Cloud Storage to store and be able to perform analysis (compute services) on your files


### Key considerations
 - Understanding costs and selecting the best fit type of storage for your data
 - Understanding storage class types (multi-regional, regional, nearline, coldline)
 - Understanding storage location options (shown below)

 [![Cloud Storage regions](/images/regions.png)]()

### How to do this
 - Create a bucket with a unique name
 - Configure the bucket storage class type (see below)
 - Configure the bucket location 
 - Configure the bucket access control, encryption and retention

 [![Cloud Storage types](/images/storage.png)]()

 [![Cloud Storage config](/images/bucket.png)]()

### How to verify you've done it
 - Upload file(s) to the bucket

### Other Things to Know
 - Storage can be the most significant GCP service cost for bioinformatics (due to the number and size of files involved in analysis)

### How to learn more
 - Best practice for Google Cloud Storage - [link](https://cloud.google.com/storage/docs/best-practices)