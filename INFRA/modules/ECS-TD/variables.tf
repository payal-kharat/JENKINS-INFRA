variable "BACKEND_TASK_DEFINITION_FAMILY" {
  type = string
}

variable "FRONTEND_TASK_DEFINITION_FAMILY" {
  type = string
}

variable "DB_TASK_DEFINITION_FAMILY" {
  type = string
}

variable "BACKEND_IMAGE_URI" {
  type = string
}

variable "FRONTEND_IMAGE_URI" {
  type = string
}

variable "DB_IMAGE_URI" {
  type = string
}

variable "ECS_EXECUTION_ROLE_ARN" {
  type = string
}

variable "ECS_TASK_ROLE_ARN" {
  type = string
}

variable "BACKEND_LOG_GROUP_NAME" {
  type = string
}

variable "FRONTEND_LOG_GROUP_NAME" {
  type = string
}

variable "DB_LOG_GROUP_NAME" {
  type = string
}

variable "AWS_REGION" {
  type = string
}

variable "BACKEND_CPU" {
  type = number
}

variable "BACKEND_MEMORY" {
  type = number
}

variable "FRONTEND_CPU" {
  type = number
}

variable "FRONTEND_MEMORY" {
  type = number
}

variable "DB_CPU" {
  type = number
}

variable "DB_MEMORY" {
  type = number
}

variable "BACKEND_CONTAINER_PORT" {
  type = number
}

variable "FRONTEND_CONT_PORT" {
  type = number
}

variable "DB_CONTAINER_PORT" {
  type = number
}

variable "BACKEND_ADDRESS" {
  type = string
}

# variable "PG_HOST" {
#   type = string
# }

# variable "PG_DBNAME" {
#   type = string
# }

# variable "PG_USER" {
#   type = string
# }

# variable "PG_PASSWORD" {
#   type      = string
#   sensitive = true
# }

# variable "POSTGRES_DB" {
#   type = string
# }

# variable "POSTGRES_USER" {
#   type = string
# }

# variable "POSTGRES_PASSWORD" {
#   type      = string
#   sensitive = true
# }
