# Using Artifact Registry

From - QuickStart: https://cloud.google.com/artifact-registry/docs/docker/store-docker-container-images

## Prep & Push Docker for Artifact Registry

Step-by-step notes  

- open cloud shell (has docker binaries installed) and auth
- make a working directory and change into it
```  
  mkdir rnaseq-container
  cd rnaseq-container
```
- auth for docker
- pull container(s) for use
  
```
gcloud auth configure-docker us-central1-docker.pkg.dev
docker pull nfcore/rnaseq`
docker pull community.wave.seqera.io/library/pip_sequana-rnaseq:45cc85730cf2976c`
```

- create the Artifact Registry, run:
- TIP: set Artifact Registry to 'auto-scan' on container push, enable `Container Analysis API`

```
gcloud artifacts repositories create $REPOSITORY_NAME \
    --repository-format=docker \
    --location=$LOCATION
gcloud auth configure-docker ${LOCATION}-docker.pkg.dev
```

- tag and push the docker image

```
docker tag nfcore/rnaseq us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0
docker push nfcore/rnaseq us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0
docker push [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest
```

### Example Values for Parameters

- DockerHub Container: `docker pull nfcore/rnaseq`
- Wave Container: `community.wave.seqera.io/library/pip_sequana-rnaseq:45cc85730cf2976c`
- Artifact Registry: `us-central1-docker.pkg.dev/genomics-compute/images`
- AF Container: `us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0`
- param config for `nextflow.config` files is `process.container = 'us-central1-docker.pkg.dev/genomics-compute/images/rnaseq:1.0'`

-------------------------------------------

### Use Docker Locally

- Install docker and use local docker desktop
- Start docker
- Integrate w/VSCode (install Docker add-in)   

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

### push container
`docker push [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest`


