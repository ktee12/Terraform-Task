# Module: Network Output
# Export the Project Name
output "project_name" {
  value = var.project_name
}

# Export the VPC ID
output "vpc_id" {
  value = aws_vpc.public_vpc.id
}

# Export the Internet Gateway
output "internet_gateway" {
  value = aws_internet_gateway.gw
}

# Export the Public Subnet AZ1 ID
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}


