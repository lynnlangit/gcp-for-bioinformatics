# Setup GCP Project Security

### Why do this
 - Learn how to secure your GCP project resources (Virtual machine instances, Cloud storage buckets,...)
 - Learn how to secure your analysis data via assigned access permissions and/or data encryption
 
### What is this
 - Google Cloud provides uses IAM (Identity and Access Management) objects to allow you to configure security
 - GCP IAM objects includes members, roles, permissions, keys and other security objects
 - GCP allows you to enable the use of selected cloud services in your account in one of three ways:
    - using enabled **services** (such as 'create VM using Google Compute Engine service' by clicking on GCP 
    console or using `gcloud create...`)
    - using enabled **APIs** (such as 'create VM instance' using GCP Cloud SDK) --or--
    - using enabled services which include API access

NOTE: Most GCP services are disabled by default.  You must first explicitly enable a service in your account, then you can create service instances of that service (such as VM instances in Google Compute Engine)

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/raw/master/images/roles.png" width="460" align="right"> 

### Key considerations
 - Only enable services/APIs that you are using in your GCP Project
 - Consider auditing service usage by using Cloud Monitoring logs - [link](https://cloud.google.com/solutions/exporting-stackdriver-logging-for-security-and-access-analytics)

### How to do this
 - Associate GCP IAM User accounts to GCP Roles (BigQuery User role shown to the right)
 - Best Practice: Use GCP-created roles.  Service-level roles include individual service permissions
 - You can create custom IAM (or security) roles if needed

### How to verify you've done it
 - Test permissions assigned to roles/users
 - TIP: You can use the GCP IAM & Admin -> `Policy Troubleshooter` tool to verify that an account has been assigned the appropriate permissions.  This tools shows the (policy) bindings assigned to one or more (service account) resources.

### 📺 Click below to see Lynn's 'Use GCP IAM security roles' 6 min video
[![GCP IAM roles - Google Cloud Platform for Bioinformatics](http://img.youtube.com/vi/4oSA9bdwlPs/0.jpg)](http://www.youtube.com/watch?v=4oSA9bdwlPs "GCP IAM roles - Google Cloud Platform for Bioinformatics")

### Other Things to Know
 - Data is encrypted by default in Cloud Storage using a Google-provided encryption key.  It is possible for you to supply your own encryption key when your requirements necessitate this.
 - You can use GCP service object labels to help you to identify services instances that have different security requirements.  They are implemented as key:value tag pairs, i.e. `"lab":"langit-lab"` etc...

### How to learn More
 - 📘 IAM Best practices - [link](https://cloud.google.com/iam/docs/using-iam-securely)
 - 📘 GCP IAM Roles Explained covers when to use which type of role -[link](https://medium.com/google-cloud/gcp-iam-roles-explained-af84955346e7)
 - 📘 GCP Security Best Practice from The Broad - [link](https://dsp-security.broadinstitute.org/cloud-security/google-cloud-platform)
 - 📘 HIPPA compliant GCP services - [link](https://cloud.google.com/security/compliance/hipaa/)
 - 📘 GCP Security Whitepapers - [link](https://services.google.com/fh/files/misc/security_whitepapers_march2018.pdf)
 - 📺 Watch [understanding Terra security roles and other topics](https://www.youtube.com/watch?v=SRVrzXHkZKU) - 27 minute video from the Broad Institute, security discussion starts at 10:00 in the video. Terra.bio runs on GCP.
 - 📘 IAM release updates, adding more granular control via service improvements - [link](https://cloud.google.com/iam/docs/release-notes)
