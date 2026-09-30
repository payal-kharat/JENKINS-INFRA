variable "backend_log_group_name" {
  type = string
}

variable "frontend_log_group_name" {
  type = string
}

variable "db_log_group_name" {
  type = string
}

variable "log_retention_days" {
  type = number
}