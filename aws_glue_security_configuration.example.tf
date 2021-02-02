resource "aws_glue_security_configuration" "example" {
  name = "example"

  encryption_configuration {
    cloudwatch_encryption {
      cloudwatch_encryption_mode = "SSE-KMS"
      kms_key_arn                = ""
    }

    job_bookmarks_encryption {
      kms_key_arn                   = ""
      job_bookmarks_encryption_mode = "CSE-KMS"
    }

    s3_encryption {
      kms_key_arn        = data.aws_kms_key.example.arn
      s3_encryption_mode = "SSE-KMS"
    }
  }
}

data "aws_kms_key" "example" {
  key_id = var.kms_key_name
}
