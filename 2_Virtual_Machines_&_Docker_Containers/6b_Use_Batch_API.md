# Use Google Batch API


### Why do this
 - Scale your analysis using [`Google Cloud Batch API`](https://cloud.google.com/blog/products/compute/new-batch-service-processes-batch-jobs-on-google-cloud) to manage compute resources
 - Google Cloud Batch API is an alternative to Google Life Sciences API (which was previously nameed Google Cloud Genomics/Pipelines API)


### What is this
 The Batch service handles several essential batch computing tasks. 
 - It manages the job queue 
 - provisions and autoscales resources
 - runs jobs and executes subtasks
 - automatically handles common errors 
 - access the service through the API, the gcloud command line tool, workflow engines, or via UI in Cloud Console. 

The Google Batch service can...
- Run batch jobs as a service. Batch supports throughput-oriented, HPC, AI/ML, and data processing jobs.
- Provision compute resources. Batch supports all CPU machine families including the newly released T2A Arm instances
- Use accelerator-optimized resources. In collaboration with NVIDIA, Batch supports the use of NVIDIA GPUs when running demanding batch workloads such as ML training, HPC, and graphics simulation.
- Support common job types including arrays of jobs and multi-node MPI jobs utilizing task parallelization. 
- Handle any executable. Bring your scripts or containerized workload.
- Provide flexible provisioning models, including support for Spot VMs, which offer up to 91% savings versus regular compute instances, and custom machine types.
- Simplify native integrations with Google Cloud services as well as popular workflow engines and tools such as Nextflow. The dsub command line tool will be supported imminently.

### Key considerations
This service is currently in preview.  Also it does NOT yet support the ability to configure integration with a particular Google Cloud VPC.

### How to do this

 USE the [Transcoding Tutorial](https://github.com/GoogleCloudPlatform/batch-samples/tree/main/transcoding) to run a pipeline that which leverages Batch to transcode H.264 video files to VP9.

 -----

### 📺 Click to see Lynn's 4 minute exploration of this section  

-- **POSTED HERE SOON**

### How to verify you've done it
 - Run your analysis, monitor for correct results (view files in your output bucket)
 - Monitor for service cost, execution time and adjust to meet your requirements

### Other Things to Know

-- **POSTED HERE SOON**

### How to learn more

- :octocat: Batch Samples - [link](https://github.com/GoogleCloudPlatform/batch-samples)
- :octocat: HPC + Batch Toolkit - [link](https://github.com/GoogleCloudPlatform/hpc-toolkit/blob/develop/docs/cloud-batch.md)
- :book: Nextflow Pipelines using Google Batch - [link](https://www.nextflow.io/blog/2022/deploy-nextflow-pipelines-with-google-cloud-batch.html)

