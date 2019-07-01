#   Using VariantTransforms & BQ

For complete directions see https://github.com/googlegenomics/gcp-variant-transforms

#### Step 0
 - Enable the Genomics, Compute Engine, Cloud Storage, and Dataflow APIs
 - Create a new BigQuery dataset using the BigQuery web UI  
    - click on the down arrow icon next to your project name in the navigation
    - click on 'Create new dataset' and name your dataset

#### Step 1  
 - Get VariantTransforms using  
 `docker pull gcr.io/cloud-lifesciences/gcp-variant-transforms`  
 - Run VariantTransforms using the script named `6_run_variant_transforms.sh`
   - replace all script params with your values
   - monitor job progress in GCP Cloud Dataflow (managed Apache Beam) console
