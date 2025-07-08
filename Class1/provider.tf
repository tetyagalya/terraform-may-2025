terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" #anything between 6.0.0 and 7.0.0
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}