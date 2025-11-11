#authorizing the AWS provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.18.0"
    }
  }
}

provider "aws" {
  # Configuration options

  region = "us-west-2"

  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}

##########################################################

#Creating an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "ninja-warror-bucket-id-345" # Bucket names must be globally unique

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}