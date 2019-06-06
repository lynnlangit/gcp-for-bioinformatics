# Setup your GCP Account


### Why do this
 - Your workload is too big to run on your laptop
 - You don't want to wait for time on your organization's shared compute cluster
 - You want to use Google Cloud Platform (services) to run large (or huge) genomic analysis jobs

### What is this
 - Ability to perform Compute on Data at scale 
 - Running on services hosted by GCP

### Key considerations
 - Use the best GCP Account type:
    - **Use GCP Free Tier** (get $ 300 USD in GCP credits for new users) minimal service limits set by Google  --OR--
    - **Use Your Organization's GCP Account** - service limits set by your company & Google
 - Understand the size & complexity of your analysis 
 - Review your budget / timeline

### How to do this
 - Select account type (FREE or ORG)
 - Request account from your organization --OR-- set up new account
 - Create a GCP PROJECT
 - Use each Project as a containers for GCP service instances, i.e. 
 my Virtual Machine instance is located the Google datacenter in us-east and in my GCP Project named 'my-research-project'

  [![GCP Resource Hierarchy](/images/resources.png)]()

### How to verify you've done it
 - Login to [GCP console](http://console.cloud.google.com)
 - View your account login (upper right of console)
 - View your project name, shown as 'gcp-for-bioinformatics' below

 [![gcp-account](/images/gcp-account.png)]()

### Other Things to Know
 - Service costs are billed to YOU for FREE Tier (after you've spent $300 credit); service costs are billed to YOUR COMPANY (or research group) for Organizational Accounts
 - Use GCP Billing tools (& budgets)
 - Understand GCP service limits by account type
 - Follow GCP security best practices

### How to learn more
 - Link to [how to set up a budget alert](https://cloud.google.com/billing/docs/how-to/budgets)
 - Link to 'core GCP security practices'