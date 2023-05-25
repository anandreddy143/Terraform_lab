terraform
required providers {
  aws = {
    source = "harshicorp/aws"
    version "4.33.0"
  }
}
}
resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket1290"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
