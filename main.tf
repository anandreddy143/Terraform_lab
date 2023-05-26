provider "aws" {
    access_key = "AKIATW3OU42LLCPMGPE6"
    secret_key = "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"
    region = "us-east-2"
}
resource "aws_s3_bucket" "b" {
  bucket = "dileep123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
