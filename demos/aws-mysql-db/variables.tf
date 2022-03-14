variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
}

variable "prefix" {
    description = "A prefix for resource tags"
    type = string
    default = "dsg"
}

variable "db_username" {
  description = "RDS root user name"
  default = "root"
}
variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
  default = "***REMOVED***"
}

variable "db_schema_path" {
  description = "Full path to the database schema"
  type = string
  default = "./schema.sql"
} 
