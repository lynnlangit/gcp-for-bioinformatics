#!/bin/bash
# Parameters to replace:
GOOGLE_CLOUD_PROJECT=GOOGLE_CLOUD_PROJECT
INPUT_PATTERN=gs://BUCKET/*.vcf
OUTPUT_TABLE=GOOGLE_CLOUD_PROJECT:BIGQUERY_DATASET.BIGQUERY_TABLE
TEMP_LOCATION=gs://BUCKET/temp

COMMAND="vcf_to_bq \
  --input_pattern ${INPUT_PATTERN} \
  --output_table ${OUTPUT_TABLE} \
  --temp_location ${TEMP_LOCATION} \
  --job_name vcf-to-bigquery \
  --runner DataflowRunner"

docker run -v ~/.config:/root/.config \
  gcr.io/cloud-lifesciences/gcp-variant-transforms \
  --project "${GOOGLE_CLOUD_PROJECT}" \
  --zones us-west1-b \
  "${COMMAND}"
