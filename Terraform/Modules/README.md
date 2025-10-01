PROJECT OVERVIEW
- Terraform project uses modules to provision a basic AWS infrastructure. It includes a VPC, subnet, route table, internet gateway, security group, and an EC2 instance configured to serve HTTP traffic via NGINX and allow SSH access.
  
Architecture Summary
<img width="218" height="116" alt="image" src="https://github.com/user-attachments/assets/250f03ec-7cb1-4278-bb39-56e8871b1050" />

🔧 Modules Used
- vpc
- subnet
- internet_gateway
- route_table
- security_group
- ec2_instance 

FEATURES
- Modular design for reusability and clarity
- EC2 instance tagged as example_instance
- Security group allows:
- SSH access on port 22
- HTTP traffic on port 80
- EC2 bootstrapped with NGINX via remote-exec provisioner

EC2 USER DATA / Provisioning
The instance runs:
sudo apt update -y
sudo apt install -y nginx

FILES STRUCTURES
<img width="188" height="227" alt="image" src="https://github.com/user-attachments/assets/6f71b2ad-ae0f-45e1-8e5a-1de70944afd4" />


UASAGE
Initialize Terraform: terraform init
Preview the changes: terraform plan
Apply the configuration: terraform apply
(Optional) Save the plan: terraform plan -out=tfplan terraform apply tfplan

CLEANUP
TO destroy the Terraform resources without requiring manual approvalterraform destroy --auto-approve

Security Notes
- SSH access is open to 0.0.0.0/0 for testing — restrict this in production.
- No secrets are stored in .tf files — use environment variables or AWS credential profiles.
  
Requirements
- Terraform ≥ 1.0
- AWS CLI configured
- IAM permissions to create EC2, VPC, and networking components
