# start docker locally

# associate with gcp
gcloud auth configure-docker

# pull container
docker pull gcr.io/cloud-lifesciences/samtools:latest
docker pull quay.io/biocontainers/samtools:1.19--h50ea8bc_0  

# tag container
docker tag biocontainers/samtools [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest

# enable Container Analysis API
# enable container scanning on Artifact Registry
# create an artifact repository

# push container
docker push [REGION]-docker.pkg.dev/[PROJECT-ID]/[REPOSITORY]/samtools:latest

# review vulnerability scan results (Dec '23)
# gcr.io container has 1433 vulnerabilities!
# quay.io container has 0 vulnerabilities!!


