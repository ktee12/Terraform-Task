terraform {

  required_version = ">= 1.2.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9.0"
    }
  }

  backend "s3" {
    # Backend s3 bucket configuration
    bucket = "sheffied-devOps-dev"
    key    = "terraform-task/terraform.tfstate"
    region = "eu-west-2"
    # DynamoDB table configuration for user locking
    dynamodb_table = "terraform-task-dev-lock"
    encrypt        = true

  }
}

provider "aws" {
  region = "eu-west-2"
}
