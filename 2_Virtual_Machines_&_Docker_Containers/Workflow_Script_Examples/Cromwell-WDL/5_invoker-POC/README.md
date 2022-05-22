# WIP - Invoker POC for cromwell and PAPI

Will update as we work through this POC. Shown above is the initial architecture.


## Steps
- new project
- enable services - LS, GCE, Functions, CloudRun, Artifact Registry
- create two test users, give 'view only' on project, when ready ADD permissions and test
- create two buckets w/ folders `data`, `in`, and `out`, add `hello.wdl`, `hello.json` to `data`
- create two functions, set to fire on file upload, and then to fire a job (see below)
- create two CloudRun jobs, set to start on function invocation. CR to use cromwell run docker image (build and store in artifact registry)
- create `google.conf` file, put in `data` bucket
- run test WDL job to verify cromwell/LS API


## Considerations/ Risks
- cromwell run - is `user_mode` available (or does it require cromwell server mode)?
- where to store keys if using `user_service_account` mode - also can this work with cromwell run?
- cloudRun time out --> suggestion on how to run 'long running tasks' --> https://www.doit-intl.com/hacking-google-cloud-run-long-background-tasks/