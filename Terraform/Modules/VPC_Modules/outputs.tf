output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.my_vpc.id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = aws_subnet.sub_1.id
}

output "route_table_id" {
  description = "ID of the route table"
  value       = aws_route_table.RT.id
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.webSg.id
}
