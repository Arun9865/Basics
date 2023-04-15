terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
    access_key = "AKIAQ4XUSHIJSA6FZIMC"
    secret_key = "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"
}

# Create a VPC
resource "aws_vpc" "Test" {
  cidr_block = "10.0.0.0/16"

    tags = {
    Name = "Test"
    Owner       = "user"
    Environment = "dev"
  }
}