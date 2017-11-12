provider "aws" {
  shared_credentials_file = "/home/tmonte/.aws/credentials"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "tmonteS3" {
  bucket = "tmonte-terraform-datapipeline"
  acl    = "private"

  tags {
    Name        = "tmonteS3bucket"
    Environment = "Dev"
  }
}
