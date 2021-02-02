
resource "aws_glue_crawler" "glue_crawler" {
  database_name          = aws_glue_catalog_database.glue_database.name
  name                   = var.glue_crawler_name
  role                   = aws_iam_role.glue_crawler.arn
  security_configuration = aws_glue_security_configuration.example

  s3_target {
    path = local.crawler_bucket_path
  }


  tags = var.common_tags
}
