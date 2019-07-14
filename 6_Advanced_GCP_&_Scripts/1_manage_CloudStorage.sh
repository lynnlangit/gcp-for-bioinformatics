# To run in Cloud Shell, set to your login and project
gcloud auth login
# --or---
gcloud init

# Create a Cloud Storage bucket
gsutil mb gs://{your-bucketname}

# Upload some data to the Cloud Storage bucket you created
gsutil cp test.dat gs://{your-bucketname}

# List the files in your bucket
gsutil ls gs://{your-bucketname}