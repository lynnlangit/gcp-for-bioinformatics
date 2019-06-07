# Use Google Compute Engine(GCE) Virtual Machines for Analysis (Compute)

**IMPORTANT: THIS ARTICLE IS IN PROGRESS**

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster


### What is this
 - Ability to perform analysis (Compute) on Data at scale 
 - Running GCE Virtual Machine instances on GCP

### Key considerations
 - On-demand - size the instance appropriately
 - Use options to save money: Pre-emptible
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
 - Can add GPU/TPUs for machine learning workloads

### How to learn more
 - Link to 'how to set up a billing alert'
 - Link to 'core GCP security practices'