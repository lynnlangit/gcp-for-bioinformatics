# Use Google Compute Engine(GCE) Virtual Machines for Analysis (Compute)

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster


### What is this
 - Ability to perform analysis (compute) on data at scale 
 - Running GCE Virtual Machine instances on GCP

### Key considerations
 - On-demand - size the instance appropriately
 - Use options to save money: [Preemptible VM](https://cloud.google.com/compute/docs/instances/preemptible) is an instance that you can create and run at a much lower price than normal instances. However, Compute Engine might terminate (preempt) these instances if it requires access to those resources for other tasks. Preemptible instances are excess Compute Engine capacity so their availability varies with usage.
 - Understand costs: billed by CPU/RAM...Always on autodiscounting
 - Your budget / Your timeline

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
 - Link to 'how to set up a billing alert'
 - Link to 'core GCP security practices'