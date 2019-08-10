# Use Google Compute Engine Virtual Machines for Analysis 

### Why do this
 - Your analysis job is too big or complex to run on your laptop
 - You don't want to wait for time on your organization's shared Hadoop or HPC compute cluster

### What is this
 - The ability to perform analysis (compute) on files and data at dynamic scale 
 - Running Google Compute Engine(GCE) Virtual Machine instances from within your GCP Project

### Key considerations
 - **Manual Configuration** - GCE VMs require you to perform extensive configuration manually
    - Configuration is required for **each VM** & also for the group (cluster) of machines
    - Alternatively, if you use bioinformatics tools and libraries (such as [Terra.bio](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/3_Use_Terra.bio_Notebooks.md), [Nextflow](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9a_Use_Nextflow_for_Pipelines.md), [dsub](https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/2_Virtual_Machines_%26_Docker_Containers/9b_Use_dsub_for_Pipelines.md)...), then those libraries will do most of the VM configuration & scaling for you **automatically**  
 - Size your VM instance to meet your time/budget goals.  Considerations include the following (screenshot below):  
      - **CPUs** -- type and number of CPU cores.  You may also add specialty cores (often for machine learning jobs) - these can include GPUs or TPUs.
      - **RAM** (memory)
      - **Base OS disk** - Debian Linux is the default
      - **Other storage** - can be Cloud Storage Bucket, Persisent Disk or combination - [link to article](https://cloud.google.com/compute/docs/disks/). If your applications do not require the lower latency of persistent disks and local SSDs, you can store your data in much cheaper Cloud Storage buckets.

Tip: Connect your instance to a Cloud Storage bucket when latency and throughput are not a priority and when you must share data easily between multiple instances or zones.
- Select the best-fit VM instance type.  There are two key types:
    - **Standard VM** (default) - size the instance appropriately, use for one-time, small-sized jobs
    - **[Preemptible VM](https://cloud.google.com/compute/docs/instances/preemptible)** is an instance that you can create and run at a much lower price than normal instances (can be up to 80% LESS than regular instances). 
    
      Note: However, Compute Engine might terminate (preempt) these instances if it requires access to those resources for other tasks. Preemptible instances are excess Compute Engine capacity so their availability varies with usage. Select this instance type to save money.  Shown below is the configuration switch to enable an instance to be preemptible.  
 - Understand service costs. VMs are billed by size (CPU/RAM), time (per second) and other factors (region).  VM cost can be reduced by using preemptible instances.  Pricing can also be reduced by always on auto-discounting (see screen below).
 - Read GCP FAQs for GCE - [link](https://cloud.google.com/compute/docs/faq)

 [![gcp-instance](/images/gce-instance.png)]()

 [![gcp-preempt](/images/preempt.png)]()

### How to do this
 - Create a new VM instance from a GCP template, 3rd party template or your own template (file) using the GCP console
 - Configure the VM instance for your analysis workload size, by setting the number of cores and amount of memory.
 - Monitor instance resource usage (CPU, RAM...)
 - Stop the instance (and/or delete it) when your analysis is complete.

 ### 📺 Click to see Lynn's 9 minute exploration of this section  
[![GCP GCE Virtual Machines for Bioinformatics](http://img.youtube.com/vi/Nb5Lb5uwbng/0.jpg)](http://www.youtube.com/watch?v=Nb5Lb5uwbng "GCP GCE Virtual Machines for Bioinformatics")

### How to verify you've done it
 - Using the GCP console, connect the to instance, for example use the integrated ssh-client to connect to Linux-based instances.  You can do this from the GCP console (SSH button) - see screenshots below.  
 - Using integrated SSH, security keys will be automatically transferred to a new window. This windows will open and give you terminal access to your instance - screenshot below
 - Verify your environment by typing a linux command into the window (i.e. 'pwd')

  [![gce-connect](/images/gce-connect.png)]()

  [![ssh](/images/ssh.png)]()

### Other Things to Know
 - Use the integrated VM monitoring console to verify that you've sized your instance properly (screenshot below) - it shows CPU, Network and other common metric usage statistics.
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
 - 📺 Link to video [GCE security best practices](https://www.youtube.com/watch?v=qDyjE1fIqkk)