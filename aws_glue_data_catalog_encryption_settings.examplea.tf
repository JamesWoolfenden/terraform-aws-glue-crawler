resource "aws_glue_data_catalog_encryption_settings" "examplea" {
  data_catalog_encryption_settings {
    connection_password_encryption {
      aws_kms_key_id                       = data.aws_kms_key.example.arn
      return_connection_password_encrypted = true
    }

    encryption_at_rest {
      catalog_encryption_mode = "SSE-KMS"
      sse_aws_kms_key_id      = data.aws_kms_key.example.arn
    }
  }
}
