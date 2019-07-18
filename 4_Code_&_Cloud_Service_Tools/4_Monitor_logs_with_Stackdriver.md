# Monitor logs with Stackdriver

### Why do this
 - You want to understand whether your service instance is working as expected
 - You want to see any error message or output logs from your service
 - You want to understand if your service configuration fits your analysis workload size

### What is this
 - Using the GCP Stackdriver service to read and aggregate your GCP service log files
 - Using Stackdriver to do customized monitoring, i.e. alerts on performance conditions

### Key considerations
 - Most GCE services integrate with Stackdriver, so that service logs can be more easily read
 - Advanced Stackdriver capabilities are billed for additional service charges

### How to do this
 - Click any link 'View in Stackdriver' in a service console for GCP
 - Navigate to the Stackdriver console to see standard service metrics and to perfrom custom actions

### How to verify you've done it
 - Start and run a service, click to view the service execution log in Stackdriver 
 - You can filter, sort and search within logs using the Stackdriver interface

 [![to-logs](/images/to-logs.png)]()
 [![arrow](/images/arrow.png)]()
 [![logs](/images/logs.png)]()

### Other Things to Know
 - Best practice for logging - [link](https://cloud.google.com/blog/products/gcp/best-practices-for-working-with-google-cloud-audit-logging)

### How to learn more
 - 📘Link to [design patterns for Stackdriver](https://cloud.google.com/solutions/design-patterns-for-exporting-stackdriver-logging)
