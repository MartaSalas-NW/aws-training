data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "website" {
  bucket = "to-delete-bucket-s3-${data.aws_caller_identity.current.account_id}"
  force_destroy = true
}

