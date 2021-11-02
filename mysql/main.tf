# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}



resource "aws_s3_bucket" "terratest" {
  bucket = "terragrunt-tf-test-bucket"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "terratest"
    Environment = "Dev"
  }
}