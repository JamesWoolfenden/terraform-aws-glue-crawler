variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}
variable "glue_database_name" {
  description = "Name of the Glue catalog database."
  type        = string
}

variable "glue_crawler_name" {
  description = "Name of the Glue crawler."
  type        = string
}

variable "s3_target_bucket_name" {
  description = "S3 target bucket for Glue crawler."
  type        = string
}

variable "target_path" {
  description = "Path to crawler target file(s)."
  type        = string
  default     = "gutter"
}

variable "name_prefix" {
  description = "Prefix for naming"
  type        = string
  default     = "jgw-"
}

variable "kms_key_name" {
  type = string
}

variable "glue_script_path" {

}