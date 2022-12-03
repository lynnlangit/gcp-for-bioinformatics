# To run in Cloud Shell, set to your login and project
gcloud auth login
# --or---
gcloud init

# Set the project of interest
gcloud config set project hello-world-314

# Create a Cloud SQL instance
gcloud sql instances create my-instance

# Assign the instance an IPv4 address, because Compute Engine
# does not yet support IPv6 addresses.
gcloud sql instances patch --assign-ip my-instance

# Set the root user password for the instance.  Replace the [PASSWORD]
# placeholder with the actual password you want to use.
gcloud sql users set-password root --host % --instance my-instance --password [PASSWORD]

# Connect to the instance.
gcloud sql connect my-instance --user=root
