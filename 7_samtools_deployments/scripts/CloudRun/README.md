# Running Samtools on CloudRun

Must be as a CloudRun JOB and NOT as a CloudRun Service.  The reason is that `samtools` requires stateful execution and CloudRun Services are stateless.
