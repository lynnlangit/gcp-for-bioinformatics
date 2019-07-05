#   Using VariantTransforms & BQ

### What is it?

VariantTransforms is a tool (open source library, written in Python) for transforming and processing VCF files in a scalable manner. 

It supports working with hundreds of thousands of files, millions of samples, and billions of records

VariantTransforms uses GCP Dataflow. Dataflow implements an optimized version of the open source Apache Beam library on GCP.

### Why use it?

VariantTranforms can be used to...
- directly load VCF files into BigQuery   
 - pre-process (validate VCF files) so that the inconsistencies can be easily identified

For complete directions see https://github.com/googlegenomics/gcp-variant-transforms

#### Step 0
 - Enable the Genomics, Compute Engine, Cloud Storage, and Dataflow APIs
 - Create a new BigQuery dataset using the BigQuery web UI  
    - click on the down arrow icon next to your project name in the navigation
    - click on 'Create new dataset' and name your dataset

#### Step 1  
 - Get VariantTransforms from a custom docker container image using the docker command below    
 `docker pull gcr.io/cloud-lifesciences/gcp-variant-transforms`  
 - Run VariantTransforms using the script named `6_run_variant_transforms.sh`
   - replace all script params with your values
   - monitor job progress in GCP Cloud Dataflow (managed Apache Beam) console
