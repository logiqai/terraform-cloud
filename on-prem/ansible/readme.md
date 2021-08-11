Ansible script to install Logiq on Ubuntu using Microk8s.
- Ensure that no application is using port 80, to find the application, run the below command and stop it.
```
netstat -tnlp|grep :80
```
- Clone the repository.
- Download the values.microk8s.yaml from the [link](https://gist.github.com/ajit-logiq/9c071c288f10f704ca02638affd65a78#file-values-microk8s-yaml)
- In the values.microk8s.yaml, make the below entries to 
    - s3_bucket: <your-s3-bucket>
    - AWS_ACCESS_KEY_ID: <your-aws-access-key-id>
    - AWS_SECRET_ACCESS_KEY: <your-aws-secret-access-key-id>
- run the command
```
ansible-playbook logiq-playbook.yaml
```
 - Once the Ansible script has finished, you can find your IP using 
 ```
  ifconfig
  ```
 - Naviaget to http://x.x.x.x or http://localhost and Logiq should load. 
 ![image](https://user-images.githubusercontent.com/67860971/129042112-8748275a-697e-4faa-9db1-cb515bb6ec6c.png)

