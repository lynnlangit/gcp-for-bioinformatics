gcloud batch jobs submit JOB_NAME \
  --location LOCATION \
  --config <configFile>.json

gcloud batch jobs describe JOB_NAME \ 
   --location LOCATION 

gcloud batch jobs list

gcloud batch tasks list \ 
   --location LOCATION \
   --job JOB_NAME

gcloud batch tasks describe TASK_INDEX \
  --location LOCATION \
  --job JOB_NAME \
  --task_group TASK_GROUP_NAME
