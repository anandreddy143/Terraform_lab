terrform{
  required providers{
  aws = {
     source = "hashicorp/aws"
     version = "v4.67.0"
  }
}
}
    
provider "aws" {
 region  = "us-east-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket1290"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
