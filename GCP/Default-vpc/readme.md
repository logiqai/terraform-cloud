Terraform script to deploy Logiq on GCP on default VPC.

This script will create the below resources on GCP default-vpc , you may charged for the resources created.
- Service account with access/ secret keys
- Bucket
- Instance with 8 VCPU/32GB
- SSD Disk 100GB 

Follow the below steps.
- Create a service account for Terraform which will enable it to spin up reources on GCP, download the keys in JSON format.
- Place the JSON keys generated and place them in the Default-vpc folder.
- Variables.tf have the below parameters, which can be modified according to your project.
    - Zone (zone where the stack will be deployed)
    - bucket (Unique bucket name where the logs will be stored)
    - project-id (GCP Project-id which will be used)
    - region (GCP Region where the stack will be spun up)
    - cred (GCP credentials file name which will be used for the project)
    - machine (Machine configuration, minimum e2-standard-8 is required)
- Once the variables have been modified, please do the below
    - terraform init
    - terraform plan
    - terraform apply 
-  Once the terraform successfully creates the resources, the end point will be 
```

access_key = <sensitive>
bucket_name = "logiq-test-poc"
logiq_endpoint = "X.X.X.X"
secret_key = <sensitive>
```
- Navigate to the logiq_endpoint link displayed in the outputs and you should be able to load Logiq.
![image](https://user-images.githubusercontent.com/67860971/125321249-1e4f3000-e35a-11eb-819b-3d55bce68624.png)
