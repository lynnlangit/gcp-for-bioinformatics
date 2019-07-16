# Setup GCP Project Security


### Why do this
 - Secure your analysis data
 - Secure your GCP project resources

### What is this
 - GCP uses IAM (Identity and Access Management) objects to allow you to configure security
 - GCP makes services available as either services, APIs or services which include APIs

### Key considerations
 - Only enable services/APIs that you are using in your GCP Project
 - Consider auditing service usage by using Stackdriver logs - [link](https://cloud.google.com/solutions/exporting-stackdriver-logging-for-security-and-access-analytics)

### How to do this
 - Associate GCP IAM User accounts to GCP Roles (BigQuery User role shown below)
 - Best Practice: Use GCP-created roles.  Service-level roles include individual service permissions
 - You can create custom roles if needed

 [![GCP roles](/images/roles.png)]()

### How to verify you've done it
 - Test permissions assigned to roles/users

### 📺Click below to see Lynn's 'Use GCP IAM security roles' 6 min video
[![GCP IAM roles - Google Cloud Platform for Bioinformatics](http://img.youtube.com/vi/4oSA9bdwlPs/0.jpg)](http://www.youtube.com/watch?v=4oSA9bdwlPs "GCP IAM roles - Google Cloud Platform for Bioinformatics")

### Other Things to Know
 - Data is encrypted by default in Cloud Storage
 - You can use GCP service object labels to help you to indentify services instances that have different security requirements

### How to learn more
 - IAM Best practices - [link](https://cloud.google.com/iam/docs/using-iam-securely)
 - HIPPA compliant GCP services - [link](https://cloud.google.com/security/compliance/hipaa/)
 - GCP Security Whitepapers - [link](https://services.google.com/fh/files/misc/security_whitepapers_march2018.pdf)
  - 📺Watch [understanding Terra security roles and other topics](https://www.youtube.com/watch?v=SRVrzXHkZKU) - 27 minute video from the Broad Institute, security discussion starts at 10:00 in the video. Terra.bio runs on GCP.