
variable "glue_database_name" {
  description = "Name of the Glue catalog database."
  type        = string
}

variable "glue_crawler_name" {
  description = "Name of the Glue crawler."
  type        = string
  default     = "uhu"
}

variable "s3_target_bucket_name" {
  description = "S3 target bucket for Glue crawler."
  type        = string
}

variable "target_path" {
  description = "Path to crawler target file(s)."
  type        = string
}

variable "name_prefix" {
  description = "Prefix for naming"
  type        = string
}
variable "params" {
  type    = map(any)
  default = {}
}

variable "catalog_id" {
  type    = string
  default = null
}

variable "location_uri" {
  type    = string
  default = null
}

variable "description" {
  type    = string
  default = "A Glue DB"
}


variable "glue_job_name" {
  type    = string
  default = "myfirstgluejob"
}

variable "glue_script_path" {
  type = string
}

variable "kms_key" {
}
