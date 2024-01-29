# Module: Network Variable
# Enable DNS hostnames
variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type        = bool
  default     = true
}

# Enable DNS support
variable "enable_dns_support" {
  description = "Enable DNS support"
  type        = bool
  default     = true
}

# Project Name
variable "project_name" {
  description = "The name of the project using the VPC created (e.g. 'tech', admin.)"
  type        = string
  default     = "Terraform Task"
}

# VPC Cidr block
variable "vpc_cidr" {
  description = "VPC cidr blocks"
  type        = string
  default     = "10.0.0.0/24"
}

# Public subnet cidr block
variable "public_subnet_cidr" {
  description = "The cidr blocks of public subnet"
  type        = string
  default     = "10.0.0.0/28"
}

# Availability zone
variable "availability_zone" {
  description = "The availabilty zone where this needs to be creted"
  type        = string
  default     = "eu-west-2c"
}

# AWS route cidr address
variable "aws_route_cidr" {
  description = "The cidr blocks for route_table"
  type        = string
  default     = "0.0.0.0/0"
}