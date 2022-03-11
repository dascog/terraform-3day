variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
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
