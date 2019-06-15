# Use Google Compute Engine Virtual Machines for Analysis 
**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your analysis job is too big or complex to run on your laptop
 - You don't want to wait for time on your organization's shared cluster

### What is this
 - The ability to perform analysis (compute) on files or data at dynamic scale 
 - Running Google Compute Engine(GCE) Virtual Machine instances from within your GCP Project
 - You have a number of choices - this article covers the items highlighted in RED SQUARES

[![gce](/images/gce-path.png)]()


### Key considerations
 - Select the best-fit VM instance type.  There are two key types:
    - Standard VM (default) - size the instance appropriately, use for one-time, small-sized jobs
    - [Preemptible VM](https://cloud.google.com/compute/docs/instances/preemptible) is an instance that you can create and run at a much lower price than normal instances (can be up to 80% LESS than regular instances). However, Compute Engine might terminate (preempt) these instances if it requires access to those resources for other tasks. Preemptible instances are excess Compute Engine capacity so their availability varies with usage. Select this instance type to save money.  Shown below is the configuration switch to enable an instance to be preemptible.
 - Understand costs: billed by CPU/RAM...Always on autodiscounting
 - Read GCP FAQ for GCE - [link](https://cloud.google.com/compute/docs/faq)

 [![gcp-preempt](/images/preempt.png)]()

### How to do this
 - Create an instance from a GCP template, 3rd party template or your own template (file)
 - Configure instance for your analysis workload size
 - Monitor instance resource usage (CPU, RAM...)
 - Stop the instance (and/or delete it) when your analysis is complete

### How to verify you've done it
 - Using the GCP console, connect the instance, for example SSH to Linux-based instance
 - Verify your account
 - Verify your envionment

### Other Things to Know
 - Use GCP Billing tools (& budgets)
 - Understand GCE service limits by account type (number of CPUs in FREE account is 24, 
  in a CORP account can be much more - ex. 2400)
 - Follow GCE security best practices
 - GCP provides images with OS and services pre-installed
 - Understand GCE disk, image or snapshot - [link](https://cloud.google.com/compute/docs/instances/)
 - Can add GPU/TPUs for machine learning workloads

### How to learn more
 - Link to [GCE Pricing](https://cloud.google.com/compute/pricing#machinetype)
 - Link to 'core GCP security practices'