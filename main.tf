terraform {
  required_version = "1.0.6"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "3.59.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    profile = "tf014"
  
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-teste-gabriel2.0-s3"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}