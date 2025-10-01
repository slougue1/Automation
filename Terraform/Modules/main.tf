module "ec2_instance" { #Pass same as defined in main.tf
  source              = "<>"
  ami_value           = "ami-0cfde0ea8edd312d4"
  instance_type_value = "t2.micro"
  subnet_id           = "<>"
}

module "vpc_module" {
  source              = "<>"
  cidr                = "10.0.0.0/16"
  subnet_cidr         = "10.0.0.0/24"
  availability_zone   = "<>"
  map_public_ip_on_launch = true
  sg_name             = "my_web_sg"
}
