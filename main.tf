provider "aws" {
  source = "harshicop/aws"
  version = "v4.67.0"
  region  = "us-east-2"
}


resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket1290"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
