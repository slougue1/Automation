#Display info expected to be displayed from terraform plan when ec2 is created
output "private_ip" { #Has to already exit
    description = "Display private IP"  
    #value = [for instance in aws_instance.example_instance : instance.private_ip] #Because aws_instance.example_instance has "count" set, specify which instance this output affect or all instances
    value = aws_instance.example_instance.private_ip
}

output "public_ip" { 
    description = "Display public IP"  
    #value = [for instance in aws_instance.example_instance : instance.public_ip]
    value = aws_instance.example_instance.public_ip
}
