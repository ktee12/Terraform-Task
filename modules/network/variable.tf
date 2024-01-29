variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type = bool
  default = true
}
variable "enable_dns_support" {
  description = "Enable DNS support"
  type = bool
  default = true
}
variable "project_name" {
  description = "The name of the project using the VPC created (e.g. 'tech', admin.)"
  type = string
  default = "Terraform Task"
}
variable "vpc_cidr" {
  description = "VPC cidr blocks"
  type = string
  default = "10.0.0.0/24" 
}
variable "public_subnet_cidr" {
  description = "The cidr blocks of public subnet"
  type = string
  default = "10.0.0.0/28"
}

variable "availability_zone" {
  description = "The availabilty zone where this needs to be creted"
  type = string
  default = "eu-west-2c"
}

variable "aws_route_cidr" {
  description = "The cidr blocks for route_table"
  type = string
  default = "0.0.0.0/0"
}