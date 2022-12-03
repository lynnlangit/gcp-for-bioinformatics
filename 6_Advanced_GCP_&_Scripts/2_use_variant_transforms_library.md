#   Using VariantTransforms & BQ

### What is it?

VariantTransforms is a tool (open source library, written in Python) for transforming & processing VCF files in a scalable manner. Here is the [source code on GitHub](https://github.com/googlegenomics/gcp-variant-transforms).

It supports working with hundreds of thousands of files, millions of samples, and billions of records

VariantTransforms uses GCP Dataflow. Dataflow implements an optimized version of the open source Apache Beam library on GCP.  

### Why use it?

VariantTranforms can be used to...
- directly load VCF files into BigQuery   
- pre-process (validate VCF files) so that the inconsistencies can be easily identified
- annotate files
- export processed files out of BQ as vcf
- can use quotas to set number of workers/ size of disk space
- there is standard vcf schema in BQ (to enable querying in BQ) - shown below
- you can use authorized views in BQ to granularly secure data stored in BQ

For complete directions see https://github.com/googlegenomics/gcp-variant-transforms

 [![bq-vcf-schema](/images/bq-vcf-schema.png)](https://github.com/googlegenomics/gcp-variant-transforms)

#### Step 0
 - ENABLE the Genomics, Compute Engine, Cloud Storage, and GCP Dataflow (Apache Beam) APIs
 - CREATE a new BigQuery dataset using the BigQuery web UI  
    - CLICK on the down arrow icon next to your project name in the navigation
    - CLICK on 'Create new dataset' and name your dataset

#### Step 1  
 - GET VariantTransforms from a custom docker container image using the docker command below    
 `docker pull gcr.io/cloud-lifesciences/gcp-variant-transforms`  
 - RUN VariantTransforms using the script named `6_run_variant_transforms.sh`
   - REPLACE all script params with your values
   - MONITOR job progress in GCP Cloud Dataflow (managed Apache Beam) console

 ### 📺 Click to see Google's 40 minute exploration of this section  
[![Genomics Analysis on GCP for Bioinformatics](http://img.youtube.com/vi/27tSivxnQ_E/0.jpg)](http://www.youtube.com/watch?v=27tSivxnQ_E "Genomics Analysis on GCP for Bioinformatics")

#### Learn More
 - 📺 Watch this video with tips on optimizing both Variant Transforms and also BigQuery queries from GCP:Next 2019 - [link](https://www.youtube.com/watch?v=27tSivxnQ_E)
 - 📘 Learn how Mayo Clinic uses Variant Transforms - [link](https://cloud.google.com/blog/products/data-analytics/genome-data-analytics-with-google-cloud)

