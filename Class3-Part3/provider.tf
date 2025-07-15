terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "world-key"
  public_key = file("~/.ssh/id_rsa.pub")

  tags = {
    Environment = "Dev"
    Team = "DevOps"
  }
}