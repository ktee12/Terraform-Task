# Input Variables
# Instance name
variable "name" {
  description = "The name of the instance created (e.g. 'app' or cluster.)"
  type = string
  default = ""
}

# Environment Variable
variable "environment" {
  description = "The type of environment (e.g 'prod', 'dev', 'staging')"
  type = string
  default = ""
}

variable "tags" {
  description = "Additional tags for the instance (e.g 'HR', 'Research')"
  type = map(any)
  default = {}   
}

# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "Terraform Task"
}



# Description: Terraform label module EC2 variables.
variable "ami" {
    description = "ID of AMI for the instance"
    type = string
    default = "ami-0500f74cc2b89fb6b"
}

variable "instance_type" {
    description = "Type of instance to start with during creation"
    type = string
    default = "t2.micro"
}

variable "instance_count" {
    description = "The number of EC2 instances to be created."
  type = number
  default = 1
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance"
  type = bool
  default = true
}

variable "user_data" {
  description = "The user data to run on instance creation"
  type = string
  default = null
}

variable "user_data_replace_on_change" {
  description = "Whenever it is used with user_data, it will get destroy and recreate when set to true. The default is false if not set"
  type = bool
  default = true
}

variable "vpc_security_group_ids" {
    description = "A list of security group IDs to associate with"
    type = list(string)
    default = null 
}

variable "subnet_id" {
    description = "The VPC subnet ID to launch in"
    type = string
    default = null
}