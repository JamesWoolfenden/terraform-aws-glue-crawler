resource "aws_s3_bucket" "glue_target" {
  # checkov:skip=CKV_AWS_19: ADD REASON
  # checkov:skip=CKV2_AWS_37: ADD REASON
  # checkov:skip=CKV2_AWS_41: ADD REASON
  # checkov:skip=CKV_AWS_18: test data
  # checkov:skip=CKV_AWS_145: test data
  # checkov:skip=CKV_AWS_144: test data
  # checkov:skip=CKV_AWS_21: test data
  # checkov:skip=CKV_AWS_52: test data
  #tfsec:ignore:AWS002
  #tfsec:ignore:AWS077
}

resource "aws_s3_bucket_server_side_encryption_configuration" "glue_target" {
  bucket = aws_s3_bucket.glue_target.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.glue.arn
      sse_algorithm     = "aws:kms"
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
