# Register container images with GCR

### Why do this
 - USE docker container images on GCP
 - You want your images to be scanned for security vulnerabilities
 - RUN Container images on VMs, Kubernetes Clusters, Cloud Run or other GCP services

### What is this
 - Registering docker container images on GCP for use (execution) by GCP services, such as VMs or Kubernetes clusters
 - Google Container Registry (gcr.io) can host images that are public or private (to a set of authorized GCP IAM users)
 - Container Registry supports Docker Image Manifest V2 and OCI image formats
 - Use the Docker credential helper command-line tool to configure Docker to authenticate directly with Container Registry

### Key considerations
 - GCR.io is an alternative to other container registries, such as DockerHub or Quay.io

### How to do this
 - Use the the cloud console to register a docker container image on Google Container Registry - shown below
 - Do the quickstart for GCR - [link](https://cloud.google.com/container-registry/docs/quickstart)

### How to verify you've done it
 - View the GCR console to see that image is listed as expected - shown below
 - Read the Stackdriver logs

 [![container-registry](/images/container-registry.png)]()

### Other Things to Know
 - Integrates with CI/CD pipeline tools, such as Google CloudBuild and others/

### How to learn more
 - 📘 Link to [Container Analysis](https://cloud.google.com/container-registry/docs/container-analysis)
 - 📘 Link to [Push DockerHub image to GCR](https://gatkforums.broadinstitute.org/firecloud/discussion/11558/howto-publish-a-docker-container-image-to-google-container-registry-gcr)
