# Use Google Compute Engine Virtual Machines for Analysis 

### Why do this
 - Your analysis job is too big or complex to run on your laptop
 - You don't want to wait for time on your organization's shared Hadoop or HPC compute cluster

### What is this
 - The ability to perform analysis (compute) on files & data at dynamic scale 
 - Running Google Compute Engine (GCE) Virtual Machines (VMs) instances from within your GCP Project.

### Key considerations
 - **Manual Configuration** - VMs require you to perform extensive configuration steps manually
    - Configuration is required for **each VM** & also for the group (cluster) of machines
    - Alternatively, if you use bioinformatics tools and libraries (such as [Terra.bio](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/3_Use_Terra.bio_Notebooks.md), [Nextflow](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9a_Use_Nextflow_for_Pipelines.md), [dsub](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9b_Use_dsub_for_Pipelines.md)...), then those libraries will do most of the VM configuration & scaling for you **automatically**  
 - Size your VMs to meet your time/budget goals.  Considerations include the following (screenshot below):  
      - **CPUs** -- type and number of CPU cores.  You may also add specialty cores (often for machine learning jobs) - these can include GPUs or TPUs.
      - **RAM** (memory)
      - **Base OS disk** - Debian Linux is the default
      - **Other storage** - can be Cloud Storage Bucket, Persisent Disk or combination - [link to article](https://cloud.google.com/compute/docs/disks/). If your applications do not require the lower latency of persistent disks and local SSDs, you can store your data in much cheaper Cloud Storage buckets.

Tip: Connect your instance to a Cloud Storage bucket when latency and throughput are not a priority and when you must share data easily between multiple VMs or zones.
- Select the best-fit VM type.  There are two key types:
    - **Standard VM** (default) - size the VM appropriately, use for one-time, small-sized jobs
    - **[Preemptible VM](https://cloud.google.com/compute/docs/instances/preemptible)** is an VM that you can create and run at a much lower price than normal instances (can be up to 80% LESS than regular instances). 
    
      Important: Compute Engine might terminate (preempt) these VMs if it requires access to those resources for other tasks. Preemptible VMs are excess Compute Engine capacity so their availability varies with usage. Select this VM type to save money.  The configuration switch to enable a VM to be preemptible is shown below.
 - Understand service costs. VMs are billed by size (CPU/RAM), time (per second) and other factors (region).  Reduce VM cost by using preemptible VMs.  Pricing can also be reduced by always on auto-discounting (see screen below).
 - Read GCP FAQs for GCE VMs - [link](https://cloud.google.com/compute/docs/faq)

 [![gcp-instance](/images/gce-instance.png)]()

 [![gcp-preempt](/images/preempt.png)]()

### How to do this
 - CREATE your VM using the GCP console
    - from a GCP template (YAML configuration file)
    - 3rd party template 
    - your own template 
    - by clicking on the console to configure (dev/test only)
 - CONFIGURE the VM 
    - for your analysis workload size
    - by setting the number of cores and amount of memory
 - MONITOR VM resource usage
    - (CPU, RAM...)
    - read/use logs (including the GCP Stackriver log reader)
 - STOP the VM when your analysis is complete
    - you can stop VM and/or
    - you can delete the stopped VM instance
    - you can create a template from a stopped VM

 ### 📺 Click to see Lynn's 9 minute exploration of this section  
[![GCP GCE Virtual Machines for Bioinformatics](http://img.youtube.com/vi/Nb5Lb5uwbng/0.jpg)](http://www.youtube.com/watch?v=Nb5Lb5uwbng "GCP GCE Virtual Machines for Bioinformatics")

### How to verify you've done it
 - Using the GCP console, connect the to VM, for example use the integrated ssh-client to connect to Linux-based instances.  You can do this from the GCP console (SSH button) - see screenshots below.  
 - Using integrated SSH, security keys will be automatically transferred to a new window. This windows will open and give you terminal access to your instance - screenshot below
 - Verify your environment by typing a linux command into the window (i.e. 'pwd')

  [![gce-connect](/images/gce-connect.png)]()

  [![ssh](/images/ssh.png)]()

### Other Things to Know
 - Use the integrated VM monitoring console to verify that you've sized your VM properly (screenshot below) - it shows CPU, Network & other common metric usage statistics.
 - Use GCP Billing tools (& budgets)
 - Understand GCE service limits by account type (number of CPUs in FREE account is 24, 
  in a CORP account can be much more - ex. 2400)
 - Follow GCE security best practices - see link to video at end of this page
 - Use GCP provided-images with OS (Linux distributions, Windows OS....) and services (SQL Server....) pre-installed
 - Reuse VMs by using GCE disks, images and snapshots - [link](https://cloud.google.com/compute/docs/instances/)
 - Add GPU/TPUs for machine learning workloads - [link](https://cloud.google.com/compute/docs/gpus/add-gpus)

   [![gce-monitor](/images/gce-monitor.png)]()

### How to learn more
 - 📘 Link to [GCE Pricing](https://cloud.google.com/compute/pricing#machinetype)
 - 📘 Link to [GCP Configuration](https://cloud.google.com/deployment-manager/docs/configuration/create-basic-configuration) YAML file example
 - 📘 Link to [Joint genotyping 10K whole genome sequences using Sentieon on Google Cloud](https://blog.dnastack.com/joint-genotyping-10k-whole-genome-sequences-using-sentieon-on-google-cloud-strategies-for-7ac77645d96d) Strategies for analyzing large sample sets
 - 📘 Link to [Using GCP Recommendation Hub Dashboard](https://cloud.google.com/recommender/docs/recommendation-hub/getting-started) to get recommendations for GCE (VM) sizes and also IAM permissions
 - 📺 Link to video [GCE security best practices](https://www.youtube.com/watch?v=qDyjE1fIqkk)
 - 📘 Link to [Best practices for GCE OS updates at scale](https://cloud.google.com/blog/products/management-tools/best-practices-for-os-patch-management-on-compute-engine)
