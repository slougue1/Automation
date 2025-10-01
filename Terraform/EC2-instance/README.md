PROJECT OVERVIEW
- This Terraform project provisions a single AWS EC2 instance named example_instance. It includes basic infrastructure setup, security configuration, and automated provisioning of NGINX.

FEATURES
- Creates one (or 2 if uncomment the count line in main.tf and outputs.tf to select one or both instances's ip to be displayed) EC2 instance using the AWS provider
- Assigns a custom tag (Name = example_instance)
- Configures a security group to allow inbound SSH traffic on port 22
- Uses a user data script to:
- Update the package manager
- Install NGINX
- Start the NGINX service

RESSOURCES CREATED
- aws_instance: EC2 instance with NGINX installed
- aws_security_group: Allows inbound SSH traffic on port 22

USER DATA SCRIPT
- The EC2 instance runs the following commands on launch:
- sudo apt update -y
- sudo apt install -y nginx"
  
Security Group Rules
- Inbound:
- Protocol: TCP
- Port: 22
- Source: 0.0.0.0/0 (for testing purposes, restrict in production)

UASAGE
- Initialize Terraform: terraform init
- Preview the changes: terraform plan
- Apply the configuration: terraform apply
- (Optional) Save the plan: terraform plan -out=tfplan
terraform apply tfplan

CLEANUP
- TO destroy the Terraform resources without requiring manual approvalterraform destroy --auto-approve 
