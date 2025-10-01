resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  #count         = 2 
  tags = {
    Name = var.instance_name
  }
  #Shared connection
  connection {
  type        = "ssh"
  user        = var.user
  private_key = file(var.key_pem_path)
  host        = self.public_ip
  }

#On your local machine use it to Trigger scripts, log output, call external tools
#Local environment must support the command
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> resources.txt"
  }

#On the remote EC2 instance use it to Install software, configure services, run shell commands
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx"
    ]

  }

  #copy the file of source from one ec2 to the ec2 being created
  provisioner "file" {
    source      = var.src
    destination = var.dst
  }

}
