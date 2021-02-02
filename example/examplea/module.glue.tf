module "glue" {
  source                = "../../"
  common_tags           = var.common_tags
  glue_database_name    = "locktite"
  kms_key_name          = var.kms_key_name
  name_prefix           = var.name_prefix
  s3_target_bucket_name = var.s3_target_bucket_name
  target_path           = var.target_path
  glue_script_path      = var.glue_script_path
}
