# GCloud Build Examples

## Build a Docker image from a Dockerfile and push it to Google Container Registry
`docker build -t gcr.io/my-project/my-image .`

## Build and tag a Docker image from a Dockerfile with a version suffix
`docker build -t gcr.io/my-project/my-image:v1.0 .`

## Build a Docker Image from a Cloud Build configuration file
`gcloud alpha builds submit --config=cloudbuild.yaml .`

## Build a Docker Image from Buildpacks
`pack build --builder gcr.io/buildpacks/builder:v1 sample-go-app`

## Build a Docker Image from a Cloud Build Buildpack configuration file
`gcloud alpha builds submit --pack image=gcr.io/my-project/imagegcr.io/my-project/image:v1.0 .`



