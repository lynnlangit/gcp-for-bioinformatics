# GCP Life Sciences Example

## Simplified workflow

From this LS API Quickstart --> https://cloud.google.com/life-sciences/docs/process-genomic-data

```
gcloud beta lifesciences pipelines run \
    --regions us-east1 \
    --command-line 'samtools index ${BAM} ${BAI}' \
    --docker-image "gcr.io/cloud-lifesciences/samtools" \
    --inputs BAM=gs://genomics-public-data/NA12878.chr20.sample.bam \
    --outputs BAI=gs://lynnlangit-life-sciences/NA12878.chr20.sample.bam.bai
```

## Use GCP Life Sciences API
`gcloud services enable cloudapis.googleapis.com`

## Create a GCP Life Sciences API key
`gcloud iam service-accounts create <service-account-name>`

## Run the API key creation command
`gcloud iam service-accounts keys create <key-file-name>.json --iam-account <service-account-name>@<project-id>.iam.gserviceaccount.com`

## Run a command to get the API key
`gcloud iam service-accounts keys list --iam-account <service-account-name>@<project-id>.iam.gserviceaccount.com`

## Run a pipeline to get the API key
`gcloud beta pipelines run <pipeline-name> --input-file <input-file-name> --output-file <output-file-name> --logging-location <logging-location> --service-account-name <service-account-name> --service-account-key-file <key-file-name>.json`

## Check the status of a pipeline
`gcloud beta pipelines list`

## Verify the pipeline output
`cat <output-file-name>`

