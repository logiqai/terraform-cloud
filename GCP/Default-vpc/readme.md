Terraform script to deploy Logiq on GCP on default VPC.

This script will spin up resource on 
- Service account with access/ secret keys
- Bucket
- Instance with 8 VCPU/32GB
- SSD Disk 100GB 

- Create a service account for Terraform which will enable it to spin up reources on GCP, download the keys in JSON format.
- Variables.tf have parameters 
