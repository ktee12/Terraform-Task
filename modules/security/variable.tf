variable "name" {
  description = "The name of the security group created (e.g. 'app' or cluster.)"
  type = string
  default = ""
}

variable "environment" {
  description = "The type of environment (e.g 'prod', 'dev', 'staging')"
  type = string
  default = ""
}

variable "vpc_id" {}
variable "from_port" {
  description = "The port where the traffic is coming from"
  type = number
  default = 8080
}

variable "to_port" {
    description = "The port where the traffic is directing to"
    type = number
    default = 65535
  
}

variable "protocol" {
  description = "The protocol used"
  type = string
  default = "tcp"
}

variable "all_ip_cidr_blocks" {
  description = "The cidr blocks"
  type = list(string)
  default = [ "0.0.0.0/0" ]
}