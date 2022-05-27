# Cromwell Dockerfiles

- For run or server mode in this folder - pull latest version.
- Or pull built version from DockerHub -- https://hub.docker.com/r/broadinstitute/cromwell

# Alternative - wdl_runner

- https://hub.docker.com/r/broadinstitute/wdl-runner

The DockerHub example demonstrates running a multi-stage workflow on GCP.  It includes run/test instructions.  

- The workflow is launched with the Google Cloud Life Sciences API.
- The workflow is defined using the Broad Institute's Workflow Definition Language (WDL).
- The workflow stages are orchestrated by the Broad Institute's Cromwell.
- When submitted using the Cloud Life Sciences API, the workflow runs on multiple Google Compute Engine virtual machines. First a master node is created for Cromwell, and then Cromwell submits each stage of the workflow as one or more separate pipelines.