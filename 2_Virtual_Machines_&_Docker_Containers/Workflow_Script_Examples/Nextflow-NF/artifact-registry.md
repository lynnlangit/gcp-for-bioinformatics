# Using Artifact Registry

## Prep & Push Docker for Artifact Registry

open cloud shell and auth
`mkdir rnaseq-container` & `cd` to it
```
gcloud auth configure-docker us-central1-docker.pkg.dev`
docker pull nfcore/rnaseq`
docker pull community.wave.seqera.io/library/pip_sequana-rnaseq:45cc85730cf2976c`
```
`docker tag nfcore/rnaseq us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0`

### Notes
- AF Container: us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0
- DockerHub Container: docker pull nfcore/rnaseq
- Wave Container: community.wave.seqera.io/library/pip_sequana-rnaseq:45cc85730cf2976c
- Artifact Registry: us-central1-docker.pkg.dev/genomics-compute/images
- QuickStart: https://cloud.google.com/artifact-registry/docs/docker/store-docker-container-images
- set Artifact Registry to 'auto-scan' on container push
- param config for `nextflow.config` files is `process.container = 'us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0'`

-------------------------------------------

### start docker locally
Could use `cloud-shell` (has docker binaries installed) or could use local docker desktop install  

#### associate with gcp
`gcloud auth configure-docker`

### pull container
```
docker pull gcr.io/cloud-lifesciences/samtools:latest
docker pull quay.io/biocontainers/samtools:1.19--h50ea8bc_0  
docker pull community.wave.seqera.io/library/pip_sequana-rnaseq:45cc85730cf2976c
```

### tag container
`docker tag biocontainers/samtools [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest`

### Other Considerations
- enable Container Analysis API
- enable container scanning on Artifact Registry
- create an artifact repository
- review vulnerability scan results (Dec '23)
- gcr.io container has 1433 vulnerabilities!
- quay.io container has 0 vulnerabilities!!

# push container
`docker push [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest`

