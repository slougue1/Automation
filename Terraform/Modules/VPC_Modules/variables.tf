variable "cidr" {
    description = "The CIDR block for the VPC"
}
variable "subnet_cidr" {
    description = "The CIDR block for the subnet"
    type        = string
}
variable "availability_zone" {
    description = "The availability zone for the subnet"
    type       = string
}
variable "map_public_ip_on_launch" {
    description = "Map public IP on launch"
    type        = bool
    default     = true
}
variable "sg_name" {
    description = "The name of the security group"
    type        = string
    default     = "web"
}

