# Use GCE Virtual Machines for Compute



### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared cluster


### What is this
 - Ability to perform Compute on Data at scale 
 - Uses GCP Genomics API + purpose-built neural network machine learning model 


### Key considerations
 - The following configuration is optimized to run DeepVariant at low cost. The total for the runtime and cost varies depending on the number of instances that get preempted, but you can expect that for a 30x whole genome sample, the pipeline will complete in 1 to 2 hours and cost between $3.00 and $4.00.

 - The configuration uses CPUs attached to preemptible VMs, which are up to 80% cheaper than regular VMs. However, Compute Engine might terminate (preempt) these instances if it requires access to those resources for other tasks. Additionally, preemptible VMs are not covered by any Service Level Agreement (SLA), so if you require guarantees on turnaround time, do not use the --preemptible flag.

### How to do this
 - Run a [DeepVariant analysis on GCP](https://cloud.google.com/genomics/docs/tutorials/deepvariant)

### How to verify you've done it
 - Verify results in output bucket

### Other Things to Know
 - DeepVariant implements a neural network using TensorFlow
 - TF analysis often run significantly faster with added GPUs or TPUs
 - If using a GCP trial account:
 Before you can run the pipeline using this configuration, you must request the following Compute Engine quota increases: CPUs: 1025, Persistent Disk: 6.4 TB, In-use IP addresses: 33
  - You can run DeepVariant on GCP with different configurations settings, such as:
    - With and without GPUs
    - Using preemptible VMs
    - Using different numbers of shards
    - Calling only exome regions

### How to learn more
 - GitHub Repo for [DeepVariant](https://github.com/google/deepvariant)