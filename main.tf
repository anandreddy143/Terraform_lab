terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
provider "aws" {
profile = "default"
region  = "us-east-1"
}
resource "aws_s3_bucket" "b" {
bucket = "anand1290"
acl    = private
}
