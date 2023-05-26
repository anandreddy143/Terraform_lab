provider "aws" {
    access_key = "AKIATW3OU42LLCPMGPE6"
    secret_key = "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"
    region = "us-east-2"
}

module "s3" {
    #bucket name should be unique
    bucket_name = "dileep123"       
}
