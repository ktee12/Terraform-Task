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
    bucket = "sheffied-devOps-prod"
    key    = "terraform-task/terraform.tfstate"
    region = "eu-west-2"
    # DynamoDB table configuration for user locking
    dynamodb_table = "terraform-task-prod-lock"
    encrypt        = true

  }
}

provider "aws" {
  region = "eu-west-2"
}
