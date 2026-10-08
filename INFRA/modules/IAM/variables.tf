variable "ecs_execution_role_name" {
  type = string
}
variable "ecs_task_role_name" {
  type = string
}


variable "SECRET_ARN" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "COMMON_TAGS" {
  type = map(string)
}