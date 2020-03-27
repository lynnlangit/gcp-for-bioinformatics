# Monitor logs with GCP Operations (was Stackdriver)

### Why do this
 - UNDERSTAND whether your service instance is working as expected
 - SEE any error message or output logs from your service
 - UNDERSTAND if your service configuration fits your analysis workload size

### What is this
 - USE the GCP Operations service (was Stackdriver) to read and aggregate your GCP service log files
 - USE Operations to do customized monitoring, i.e. alerts on performance conditions

### Key considerations
 - Most GCE services integrate with Operations, so that service logs can be more easily read
 - Advanced Operations capabilities are billed for additional service charges

### How to do this
 - CLICK any link 'View in Operations' in a service console for GCP
 - NAVIGAGE to the Operations console to see standard service metrics and to perfrom custom actions

### How to verify you've done it
 - START and run a service, click to view the service execution log in Operations 
 - FILTER, sort or search within logs using the Operations interface

Click the button highlighted in red to open the Operations logs.
 [![to-logs](/images/to-logs.png)]()
View, filter and read the logs, to understand the service execution details. 
 [![logs](/images/logs.png)]()

### Other Things to Know
 - Best practice for logging - [link](https://cloud.google.com/blog/products/gcp/best-practices-for-working-with-google-cloud-audit-logging)

### How to learn more
 - 📘 Link to [design patterns for Operations](https://cloud.google.com/solutions/design-patterns-for-exporting-Operations-logging)
