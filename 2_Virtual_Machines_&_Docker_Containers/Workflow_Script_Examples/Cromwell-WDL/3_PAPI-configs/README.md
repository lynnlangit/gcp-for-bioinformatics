# Cromwell Backend Config Files 

This folder contains examples of these files.  To run use this pattern for cromwell run mode on PAPI (GCP):

`java -Dconfig.file=google.conf -jar cromwell-67.jar run hello.wdl -i hello.inputs`

## More Info

Copy over the sample `google.conf` file utilizing Application Default credentials to the same directory that contains your sample WDL, inputs and Cromwell jar. Replace <google-project-id> and <google-bucket-name>in the configuration file with the project id and bucket name. Replace <google-billing-project-id> with the project id that has to be billed for the request.

