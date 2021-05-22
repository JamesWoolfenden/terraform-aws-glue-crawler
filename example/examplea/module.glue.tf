module "glue" {
  source                = "../../"
  glue_database_name    = var.glue_database_name
  name_prefix           = var.name_prefix
  s3_target_bucket_name = aws_s3_bucket.glue_target.id
  target_path           = var.target_path
  glue_script_path      = var.glue_script_path
  kms_key               = aws_kms_key.glue
}
