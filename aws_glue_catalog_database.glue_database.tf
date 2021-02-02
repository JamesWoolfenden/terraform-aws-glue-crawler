
resource "aws_glue_catalog_database" "glue_database" {
  name         = var.glue_database_name
  catalog_id   = var.catalog_id
  description  = var.description
  location_uri = var.location_uri
  parameters   = var.params
}

