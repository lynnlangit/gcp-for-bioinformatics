# To run in Cloud Shell, set to your login and project
gcloud auth login
# --or---
gcloud init

# List all compute instances in the project
gcloud compute instances list

# Grep the serial console output from all instances in the project
# for a specific pattern in the output.
gcloud compute instances list | \
awk 'NR > 1 { print "--zone " $2 " " $1 }' | \
xargs -L1 gcloud compute instances get-serial-port-output | \
grep BREAK-IN