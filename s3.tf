provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "this" {
  bucket = "static-"

  # Block public access
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
