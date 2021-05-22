resource "aws_s3_bucket" "glue_target" {
  # checkov:skip=CKV_AWS_18: test data
  # checkov:skip=CKV_AWS_145: test data
  # checkov:skip=CKV_AWS_144: test data
  # checkov:skip=CKV_AWS_21: test data
  # checkov:skip=CKV_AWS_52: test data
  #tfsec:ignore:AWS002
  #tfsec:ignore:AWS077
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


resource "aws_s3_bucket_public_access_block" "glue_target" {
  bucket                  = aws_s3_bucket.glue_target.id
  restrict_public_buckets = true
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
}
