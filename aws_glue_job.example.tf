resource "aws_glue_job" "example" {
  name                   = var.glue_job_name
  security_configuration = aws_glue_security_configuration.example.id
  role_arn               = aws_iam_role.glue_crawler.arn
  command {
    script_location = var.glue_script_path
  }
}
