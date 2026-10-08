variable "project_name" {
  type = string
}

variable "environment" {
  type = string

  validation {
    condition = contains(
      ["dev", "qa", "uat", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, qa, uat, or prod."
  }
}

variable "vpc_cidr" {
  type = string
}

variable "availability_zones" {
  type = list(string)

  validation {
    condition     = length(var.availability_zones) >= 2
    error_message = "At least two availability zones are required."
  }
}

variable "public_subnet_cidrs" {
  type = list(string)

  validation {
    condition = length(var.public_subnet_cidrs) == length(var.availability_zones)

    error_message = "Number of public subnet CIDRs must match number of availability zones."
  }
}

variable "private_subnet_cidrs" {
  type = list(string)

  validation {
    condition = length(var.private_subnet_cidrs) == length(var.availability_zones)

    error_message = "Number of private subnet CIDRs must match number of availability zones."
  }
}

variable "backend_ecr_repository_name" {
  type = string
}

variable "frontend_ecr_repository_name" {
  type = string
}

variable "db_ecr_repository_name" {
  type = string
}


variable "ecs_execution_role_name" {
  type = string
}

variable "ecs_task_role_name" {
  type = string
}

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

variable "ecs_cluster_name" {
  type = string
}

variable "container_insights" {
  type = string

  validation {
    condition     = contains(["enabled", "disabled"], var.container_insights)
    error_message = "container_insights must be enabled or disabled."
  }
}

variable "SERVICE_DISCOVERY_NAMESPACE_NAME" {
  type = string
}

variable "BACKEND_SERVICE_DISCOVERY_NAME" {
  type = string
}

variable "DB_SERVICE_DISCOVERY_NAME" {
  type = string
}

variable "ALB_NAME" {
  type = string
}

variable "FRONTEND_TARGET_GROUP_NAME" {
  type = string
}

variable "ALB_LISTENER_PORT" {
  type = number
}

variable "FRONTEND_CONTAINER_PORT" {
  type = number
}

variable "HEALTH_CHECK_PATH" {
  type = string
}

variable "HEALTH_CHECK_PORT" {
  type = string
}

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

# variable "MYSQL_DATABASE" {
#   type = string
# }
# variable "MYSQL_HOST" {
#   type = string
# }
variable "SECRET_NAME" {
  type = string
}

variable "MYSQL_PASSWORD" {
  type      = string
  sensitive = true
}

variable "MYSQL_USER" {
  type      = string
  sensitive = true
}

variable "MYSQL_ROOT_PASSWORD" {
  type      = string
  sensitive = true
}

variable "MYSQL_DATABASE" {
  type = string
}
# emp-backend

variable "DB_NAME" {
  type = string
}
variable "DB_HOST" {
  type = string
}
variable "DB_PORT" {
  type = string
}
variable "DB_PASSWORD" {
  type      = string
  sensitive = true
}
variable "DB_USER" {
  type      = string
  sensitive = true

}

# variable "POSTGRES_PASSWORD" {
#   type      = string
#   sensitive = true
# }

variable "AWS_REGION" {
  type = string
}

variable "BACKEND_SERVICE_NAME" {
  type = string
}

variable "FRONTEND_SERVICE_NAME" {
  type = string
}

variable "DB_SERVICE_NAME" {
  type = string
}

variable "DESIRED_BACKEND_COUNT" {
  type = number
}

variable "DESIRED_FRONTEND_COUNT" {
  type = number
}

variable "DESIRED_DB_COUNT" {
  type = number
}

variable "BACKEND_DISCOVERY_NAME" {
  type = string
}

variable "BACKEND_PORT_NAME" {
  type = string
}

variable "BACKEND_CLIENT_ALIAS_DNS_NAME" {
  type = string
}

variable "BACKEND_CLIENT_ALIAS_PORT" {
  type = number
}

variable "DB_DISCOVERY_NAME" {
  type = string
}

variable "DB_PORT_NAME" {
  type = string
}

variable "DB_CLIENT_ALIAS_DNS_NAME" {
  type = string
}

variable "DB_CLIENT_ALIAS_PORT" {
  type = number
}

variable "ENABLE_EXECUTE_COMMAND" {
  type = bool
}

variable "COMMON_TAGS" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}
variable "BACKEND_HOST" {
  type = string
}

