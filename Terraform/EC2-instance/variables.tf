variable "ami_id" {
    type        = string                  #data type
    default     = "ami-0cfde0ea8edd312d4" 
    description = "The AMI ID to use for my ec2 instance"
}

variable "instance_type" {
    type        = string                  
    default     = "t2.micro" 
    description = "Ec2 instance type"
}

variable "key_name" {
    type        = string                  
    default     = "<KEY PAIR NAME>" 
    description = "The key pair"
}

variable "instance_name" {
    type        = string                  
    default     = "ExampleInstance" 
    description = "The name of my EC2 instance"
}

variable "user" {
    type        = string                  
    default     = "ubuntu" 
    description = "The user to connect to the instance"
}

variable "key_pem_path" {
    type        = string                  
    default     = "KEY PAIR PATH, PREFERABLY ADD IN CURRENT TERRAFORM PATH" 
    description = "The private key file path"
}

variable "src" {
    type        = string                  
    default     = "<RELATIVE PATH>/resources.txt" 
    description = "The source file path"
}

variable "dst" {
    type        = string                  
    default     = "<RELATIVE PATH>/resources.txt" 
    description = "The destination file path"
}
