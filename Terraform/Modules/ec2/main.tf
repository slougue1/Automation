resource "aws_instance" "server" { #"aws_instance" type of instance "server" is the name of the instance
  ami           = var.ami_value
  instance_type = var.instance_type_value
  subnet_id     = var.subnet_id
}
