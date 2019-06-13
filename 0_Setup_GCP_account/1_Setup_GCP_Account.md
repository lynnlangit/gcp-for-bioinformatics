# Setup your Google Cloud Platform (GCP) Account

### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for compute time on your organization's shared compute cluster
 - You want to use Google Cloud Platform services to run large (or huge) genomic analysis jobs

### What is this
 - Ability to perform analysis (Compute) on files (Data) at scale 
 - Running on public cloud services hosted by GCP

### Key considerations
 - Use the best GCP Account type:
    - **Use GCP Free Tier** (get $ 300 USD in GCP credits for new users) minimal service limits set by Google - [link](https://cloud.google.com/free) --OR--
    - **Use Your Organization's GCP Account** - service limits set by your company & Google
 - Understand the size & complexity of your analysis 
 - Review your budget / timeline
 - Determine the location (Google data center) for your project - [locations](https://cloud.google.com/about/locations/)

   [![GCP Locations](/images/all-regions.png)]()

 NOTE: There are many bioinformatics analysis workflow tools, libraries and solutions which can be run on top of core GCP services.  Examples include [Terra.bio (was Firecloud)](https://terra.bio/), [cromwell](https://cromwell.readthedocs.io/en/stable/), [Nextflow.io](https://www.nextflow.io/) and many others.

### How to do this
 - Select GCP account type (FREE or ORG)
 - Request GCP account from your organization --OR-- set up GCP new account
 - Create a **GCP PROJECT** for your research project

 - Use **each** GCP Project as a container for GCP service instances, i.e. 
 my Virtual Machine instance is located the Google datacenter in us-east and in my GCP Project named 'my-research-project'

  [![GCP Resource Hierarchy](/images/resources.png)]()

### How to verify you've done it
 - Login to [GCP console](http://console.cloud.google.com)
 - View your account login (upper right of console)
 - View your project name, shown as 'gcp-for-bioinformatics' below

 [![gcp-account](/images/gcp-account.png)]()

### Other Things to Know
 - GCP service costs are billed to YOU for FREE Tier (after you've spent your $300 credit)
 - GCP FREE tier account have built-in service usage limits - [link](https://cloud.google.com/free/docs/gcp-free-tier)
 - GCP service costs are billed to YOUR COMPANY (or research group) for Organizational Accounts
 - A GCP Billing Account can be linked to one or more projects and is how you pay (credit card, invoice...).
   - billing account is linked to a payment profile (individual or corporate)

 [![billing](/images/billing.png)]()
 

### How to learn more
 - Link to [how to set up a budget alert](https://cloud.google.com/billing/docs/how-to/budgets)
 - Link to [GCP Billing concepts](https://cloud.google.com/billing/docs/concepts)
 - Link to [GCP Service Pricing Calculator](https://cloud.google.com/products/calculator/)