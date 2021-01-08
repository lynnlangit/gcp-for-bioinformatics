# Use DeepVariant to perform variant calling

### Why do this
  - High accuracy - In 2016 DeepVariant won PrecisionFDA Truth Challenge for best SNP Performance. DeepVariant maintains high accuracy across data from different sequencing technologies, prep methods, and species.

 - Flexibility - Out-of-the-box use for PCR-positive samples and low quality sequencing runs, and easy adjustments for different sequencing technologies and non-human species.
 - Ease of use - No filtering is needed beyond setting your preferred minimum quality threshold.
 - Cost effectiveness - With an optimized setup on Google Cloud, it costs ~$2-3 to call a whole genome and $0.20 to call an exome with preemptible instances.
 - Speed - On a 64-core CPU-only machine, DeepVariant completes a 50x WGS in 5 hours and an exome in 16 minutes (1). Multiple options for acceleration exist, taking the WGS pipeline to as fast as 40 minutes (see external solutions).
 - Usage options - DeepVariant can be run via Docker or binaries, using both on-premise hardware or in the cloud, with support for hardware accelerators like GPUs and TPUs.

### What is this
- USE GCP Genomics API + a purpose-built deep neural network machine learning model for genomic variant analysis (SNPs and Indels variant calling)
- RUN 'optimzed for (run) time' or 'optimized for (run) cost'.  Shown below is a typical GCP architecture for workloads using Deep Variant.

![Deep Variant Architecture](/images/deep-variant-arch.png)

### Key considerations
 - The following configuration is optimized to run DeepVariant at low cost. The total for the runtime and cost varies depending on the number of instances that get preempted, but you can expect that for a 30x whole genome sample, the pipeline will complete in 1 to 2 hours and cost between $3.00 and $4.00.

 - The configuration uses CPUs attached to preemptible VMs, which are up to 80% cheaper than regular VMs. However, Compute Engine might terminate (preempt) these instances if it requires access to those resources for other tasks. Additionally, preemptible VMs are not covered by any Service Level Agreement (SLA), so if you require guarantees on turnaround time, do not use the --preemptible flag.

### How to do this
 - Run a [DeepVariant analysis on GCP](https://cloud.google.com/genomics/docs/tutorials/deepvariant)
 - Running DeepVariant consists of three stages:
    - Making examples: DeepVariant pre-processes the input data and saves examples from the data using an internal TensorFlow format. You can run this stage in parallel where the input shards are processed independently.
    - Calling variants: DeepVariant runs a deep neural network that makes inferences from the examples and saves them into shared files using an internal TensorFlow format.
    - Post-processing variants: DeepVariant converts variants from the internal TensorFlow format to VCF or gVCF files. This stage runs on a single thread.

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
 - :octocat: GitHub Repo for [DeepVariant](https://github.com/google/deepvariant)
 - Interview with Maria Nattestad - she discusses `Deep Variant` from 30:00 onwards - [link](https://www.youtube.com/watch?v=ynX2R-aWkEg)

 [![DeepVariant](/images/deep-variant.png)](https://google.github.io/deepvariant/posts/2018-12-05-improved-non-human-variant-calling-using-species-specific-deepvariant-models/)
 -  📘 From GCP: Marketplace - [Parabricks](https://console.cloud.google.com/marketplace/details/parabricks/parabricks) supports the full GATK4 germline, somatic and variant calling pipelines, Google DeepVariant and population study tools.
