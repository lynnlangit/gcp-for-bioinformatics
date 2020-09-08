# Serverless Workflows with GCP Workflows

### Why do this
 CREATE a serverless workflow on GCP quickly

### What is this
 - USE GCP Workflows to create a serverless workflow using a YAML file which defines workflow steps
- GCP Workflows allows you to orchestrate and automate both your GCP and external HTTP-based API services into serverless workflows
 - GCP Workflows commonly 'string together' the outputs from such as GCP Functions, CloudRun, Firestore and other GCP Serverless services

### Key considerations
 - SETUP a GCP Service account with the "roles/run.invoker" permission
 - UNDERSTAND GCP Workflows is currently in beta

### How to do this
 - CREATE your Cloud Functions or Cloud Run instances.  These will be tasks in your workflow
 - CREATE a YAML file to describe and define task execution and output flow for your workflow
 - USE a Quickstart - [link](https://cloud.google.com/workflows/docs/quickstart-console)

### How to verify you've done it
 - RUN your workflow
 - REVIEW the GCP logs to verify the result of the workflow invocations 

### Other Things to Know
 - Workflow features - [link](https://cloud.google.com/workflows#section-8)
 - Serverless autoscales (to your GCP account limits) by default
 - USE GCP Secrets Manager to store secrets (API keys, etc...) with GCP Workflows

### How to learn more
 - :octocat: Link to [code example](https://github.com/meteatamel/workflow-samples)
 - 📺 Link to "How to build Serverless Workflows" 16 minute video - [link](
https://cloud.withgoogle.com/next/sf/sessions?session=SVR101#application-modernization)
- 📘 Link to [pricing example](https://cloud.google.com/workflows/pricing#price-tables)
 
