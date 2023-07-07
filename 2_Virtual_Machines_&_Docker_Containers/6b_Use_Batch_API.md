# Use Google Batch API

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-tool-tests.png" width=800>


### Why do this
 - Scale your analysis using [`Google Cloud Batch API`](https://cloud.google.com/blog/products/compute/new-batch-service-processes-batch-jobs-on-google-cloud) to manage compute resources. One possible example architecture (for testing bioinformatics tools at scale) is shown above.
 - Google Cloud Batch API is an alternative to Google Life Sciences API (which was previously nameed Google Cloud Genomics/Pipelines API)


### What is this
 The Google Batch service handles several essential batch computing tasks. 
 - It manages the job queue by...
   - provisioning and autoscaling resources
   - running jobs and executing subtasks
   - automatically handling common errors 
 - Access the service through the API, the gcloud command line tool, workflow engines, or via UI in Cloud Console. 

The Google Batch service can...
- Run batch jobs as a service. Batch supports throughput-oriented, HPC, AI/ML, and data processing jobs.
- Provision compute resources. Batch supports all CPU machine families including the newly released T2A Arm instances
- Use accelerator-optimized resources. Batch supports the use of NVIDIA GPUs for workloads such as ML training, HPC, and graphics simulation.
- Support common job types including arrays of jobs and multi-node MPI jobs utilizing task parallelization. 
- Handle any executable. Bring your **scripts** or **containerized** workload.
- Support for **Spot VMs, which offer up to 91% savings** (versus regular compute instances), and for custom machine types.
- Simplify native integrations with bioinformatics workflow engines and tools such as Nextflow and the `dsub` command line tool.

### How to do this - Samtools Example

 USE the Google Batch to run a single task pipeline which leverages Batch scale using `samtools`.  You can use either a **container image** or a **script** to detail one or more job run steps (or tasks).  This example uses a public bionformatics container which contains the open source `samtools` (gcr.io/cloud-lifesciences/samtools) to run a job.    
 
 To configure a job, create a file using the example below `samtools.json`.  Use this file to configure the cores and memory requested for your job run.  In this configuration file, you can also detail the `VM Model` (standard or spot) type, task count and parallelism for your job run.    

 ```
 {
    "taskGroups": [
        {
            "taskSpec": {
                "runnables": [
                    {
                        "container": {
                            "imageUri":"gcr.io/cloud-lifesciences/samtools",
                            "entrypoint": "/bin/sh",
                            "commands": [
                                "-c",
                                "samtools view -h ${BAM} | head"
                            ]
                        },
                        "environment": {
                            "variables": {
                                "BAM": "gs://genomics-public-data/NA12878.chr20.sample.bam"
                            }
                        }
                    }
                ],
                "computeResource": {
                    "cpuMilli": 2000,
                    "memoryMib": 2000
                },
                "maxRetryCount": 3,
                "maxRunDuration": "100000s"
            },
            "taskCount": 3,
            "parallelism": 10
        }
    ],
    "logsPolicy":{
        "destination": "CLOUD_LOGGING"
    }
}
 ```
 
 To run the job open cloud shell and use this gcloud command:

 ```
 gcloud batch jobs submit samtools-container --location us-central1 --config samtools.json
 ```
 If you select spot VM instance type, then the VM types that will be used are Google Compute Engine pre-emptible types and their execution can be interrupted, depending on spot instance availability.
 
 Use Cloud Logging and the Google Batch Web UI to monitor batch job status.  After the batch job completes, verify the output files in the configured cloud storage bucket.  When the job is complete, the web UI will show the status of the job, "succeeded", "failed", etc...  

### How to verify you've done it
 - Run your analysis, monitor for correct results in the WebUI (shown below) or via the `gcloud batch jobs describe....` command
   - view Cloud Logging `task` output  -or- 
   - files in your output bucket if you use a different samtools command which outputs a file
 - Monitor for service cost, execution time and adjust job configuration parameters to meet your requirements

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-samtools.png" width=900>

-----

### Example Architecture for End-to-End Analysis 

Shown below is an expandable compute cluster, driven by **Google Batch**, which is designed to run *multiple types of bioinformatics pipelines* (primary or secondary.)  Also shown is the use of Google DataPlex (as a DataMesh) set of services for reference and other data.

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-pipelines.png" width=1000>

### How to learn more

#### General Google Batch 
- :books: GCP Docs and more examples of using Google Batch features - [link](https://cloud.google.com/batch/docs/create-run-job#create-basic-script)
- 📺 10 minute video on Google Batch (includes demo) - [link](https://www.youtube.com/watch?v=RS7UJhD4R48)
- :octocat: Batch Samples - [link](https://github.com/GoogleCloudPlatform/batch-samples)
- :books: Google Batch example using video transcoding - [link](https://github.com/GoogleCloudPlatform/batch-samples/tree/main/transcoding)

#### Google Batch and HPC or Nextflow
- :octocat: HPC + Batch Toolkit - [link](https://github.com/GoogleCloudPlatform/hpc-toolkit/blob/develop/docs/cloud-batch.md)
- :book: Nextflow Pipelines using Google Batch - [link](https://www.nextflow.io/blog/2022/deploy-nextflow-pipelines-with-google-cloud-batch.html)
- :books: Nextflow Pipelines and Google Batch configuration documentation - [link](https://www.nextflow.io/docs/edge/google.html#cloud-batch)


