# HPC on Google Cloud

Here's a collection of examples, links and notes on best practices for running HPC workloads on GCP.  Image from Google's [`HPC Toolkit` docs](https://cloud.google.com/hpc-toolkit/docs/overview) shown below

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/hpc-toolkit.png" width=800>

## Best Practices for HPC on GCP

- Article: "Best practices for running tightly coupled HPC applications on Compute Engine" - [link](https://cloud.google.com/architecture/best-practices-for-using-mpi-on-compute-engine)
- Checklist: "Best practice list for HPC on GCP" - [link](https://cloud.google.com/architecture/best-practices-for-using-mpi-on-compute-engine#checklist)
- Blog: "Introducing HPC VM images—pre-tuned for optimal performance" - [link](https://cloud.google.com/blog/topics/hpc/introducing-hpc-vm-images)
- GCP Marketplace: "HPC pre-tuned VM image" - [link](https://console.cloud.google.com/marketplace/product/click-to-deploy-images/hpc-vm-image)
- Tutorial: "Create an HPC-ready VM instance" - [link](https://cloud.google.com/compute/docs/instances/create-hpc-vm) includes tuning / settings recommended practices
- Playbook: "HPC on GCP Playbook from NIH" - [link](https://cloud.nih.gov/resources/guides/science-at-cloud-providers/science-on-gcp/GCPHPCPlaybook.pdf)


## Slurm on GCP

- Quickstart: "Deploy Slurm on GCP" (step-by-step) - [link](https://cloud.google.com/hpc-toolkit/docs/quickstarts/slurm-cluster)
- GitHub Repo: "Slurm on GCP" - [link](https://github.com/SchedMD/slurm-gcp)
- Tutorial: "Deploying a Slurm cluster on Compute Engine" - [link](https://cloud.google.com/architecture/deploying-slurm-cluster-compute-engine) uses Terraform template
- User Guide: "Slurm on GCP guide" - [link](https://docs.google.com/document/d/e/2PACX-1vS0I0IcgVvby98Rdo91nUjd7E9u83oIMCM4arne-9_IdBg6BdV1lBpUcSje_PyHcbAaErC1rY7p4u1g/pub)

## File Systems for HPC

- GCP Best Practice: "When to use parallel file systems" - [link](https://cloud.google.com/architecture/parallel-file-systems-for-hpc#when_to_use_parallel_file_systems)
- Main site: "Lustre.org" - [link](https://www.lustre.org/)
- Documentation: "DDN EXAScaler Cloud" (commerical Lustre) - [link](https://cloud.google.com/architecture/filers-on-compute-engine#DDN)
- GCP Marketplace: "EXAScaler Cloud Offering" - [link](https://console.cloud.google.com/marketplace/details/ddnstorage/exascaler-cloud)
- Architecture Center: "Parallel file systems for HPC workloads" - [link](https://cloud.google.com/architecture/parallel-file-systems-for-hpc)

----

## Google Reference Architecture for HPC on GCP

This pattern is from Google Cloud guidance, drawn using the Google Cloud free, online cloud architecture tool.

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/gcp-hpc-arch.png" width=900>
