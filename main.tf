terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

/*--------------------------------------------------
 * S3 Buckets
 * The resource block will create all the buckets in the variable array
 *-------------------------------------------------*/
  
variable "s3_bucket_names" {
  type = list
  default = ["dev-bucket.app", "uat-bucket.app", "prod-bucket.app"]
}

resource "aws_s3_bucket" "rugged_buckets" {
  count         = length(var.s3_bucket_names) //count will be 3
  bucket        = var.s3_bucket_names[count.index]
  acl           = "private"
  region        = "us-east-1"
  force_destroy = true
}
