# Setup Continuous Integration and Continuous Deployment

### Why do this
 - USE GCP to host to set up CI/CD pipeline
 - BUILD a GCP serverless and integrated CI/CD pipeline 
 - CREATE a blueprint for GCP infrastructure for reproducible research

### What is this
 - CI/CD services hosted on GCP - uses GCP CloudBuild service
 - Often used with GCP Source Repositories and GCP Container Registry

### Key considerations
 - CloudBuild can be easily integrated with other GCP services
 - CloudBuild will utilitze custom build triggers for CI/CD scenarios

### How to do this
 - DO the steps in this article 'Gitops CI/CD with Cloud Build and Source Repositories' - [link](https://cloud.google.com/kubernetes-engine/docs/tutorials/gitops-cloud-build)
 - USE the mindmap to see (and be able to try out) the configuration steps needed to build a GCP serverless CI/CD pipeline - [link](https://app.mindmup.com/map/_v2/a4de55c088c511e9bbc6db11d9e2a10a)

  [![ci-cd](/images/ci-cd.png)]()

### How to verify you've done it
 - PUSH updated application or configuration code to your Source Repo with a CloudBuild trigger
 - VERIFY updated service and application code works as expected via manual or automated tests
 - REVIEW associated service logs


### Other Things to Know
 - Use integrated search to intelligently search any Source Repository code - [link](https://cloud.google.com/source-repositories/docs/searching-code)
 - Understand Source Repositories by reviewing integrated Stackdriver activity log readers
 - Use the open source [Spinnaker](https://www.spinnaker.io/) CI/CD service release for GCP GKE (Kubernetes) to build CI/CD for GKE clusters - [link](https://cloud.google.com/docs/ci-cd/spinnaker/spinnaker-for-gcp)

### How to learn more
 
  - 📘 Read about CI/CD concepts in this [article](https://read.acloud.guru/cloud-based-ci-cd-on-gcp-6b07fde7222d)