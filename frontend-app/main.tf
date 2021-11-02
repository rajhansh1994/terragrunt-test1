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

/*resource "aws_instance" "example" {
  # Run an Ubuntu 18.04 AMI on the EC2 instance.
  ami                    = "ami-0747bdcabd34c712a"
  instance_type          = "t2.micro"
 # vpc_security_group_ids = [aws_security_group.instance.id]
  key_name = "anz_demo"
}*/