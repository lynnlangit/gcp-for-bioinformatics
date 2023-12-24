gcloud beta lifesciences pipelines run \
    --regions us-east1 \
    --command-line 'samtools index ${BAM} ${BAI}' \
    --docker-image "gcr.io/cloud-lifesciences/samtools" \
    --inputs BAM=gs://genomics-public-data/NA12878.chr20.sample.bam \
    --outputs BAI=gs://mayo-demos-life-sciences/NA12878.chr20.sample.bam.bai
