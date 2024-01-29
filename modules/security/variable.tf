# Module: Security Variable
# Security group name
variable "name" {
  description = "The name of the security group created (e.g. 'app' or cluster.)"
  type        = string
  default     = ""
}

# Environment name
variable "environment" {
  description = "The type of environment (e.g 'prod', 'dev', 'staging')"
  type        = string
  default     = ""
}

# VPC ID
variable "vpc_id" {
  description = "The id of the vpc"
}

# From port
variable "from_port" {
  description = "The port where the traffic is coming from"
  type        = number
  default     = 8080
}

# To port
variable "to_port" {
  description = "The port where the traffic is directing to"
  type        = number
  default     = 65535

}

# Protocol used
variable "protocol" {
  description = "The protocol used"
  type        = string
  default     = "tcp"
}

# All IP cidr blocks
variable "all_ip_cidr_blocks" {
  description = "The cidr blocks"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}