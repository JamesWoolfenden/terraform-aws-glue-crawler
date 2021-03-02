common_tags = {
  "createby" = "Terraform"
  module     = "terraform-aws-glue-crawler"
}
kms_key_name     = "alias/glue"
glue_script_path = "s3://mygluejobbucket/example.py"
