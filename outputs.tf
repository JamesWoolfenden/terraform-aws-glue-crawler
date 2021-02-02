output "glue_crawler_name" {
  description = "The name of the Glue crawler."
  value       = aws_glue_crawler.glue_crawler.id
}

output "security_configuration" {
  value       = aws_glue_security_configuration.example
  description = "A Glue Security Configuration"
}
