resource "aws_kms_key" "glue" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  description             = "kms_key_1"
  deletion_window_in_days = 10
  key_usage               = "ENCRYPT_DECRYPT"
  is_enabled              = true
  enable_key_rotation     = true

}
resource "aws_kms_alias" "glue" {
  name          = "alias/glue"
  target_key_id = aws_kms_key.glue.key_id
}
