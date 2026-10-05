variable "BACKEND_SERVICE_NAME" {
  type = string
}
variable "FRONTEND_SERVICE_NAME" {
  type = string
}
variable "DB_SERVICE_NAME" {
  type = string
}
variable "ECS_CLUSTER_ID" {
  type = string
}
variable "BACKEND_TASK_DEFINITION_ARN" {
  type = string
}
variable "FRONTEND_TASK_DEFINITION_ARN" {
  type = string
}
variable "DB_TASK_DEFINITION_ARN" {
  type = string
}
variable "PRIVATE_SUBNET_IDS" {
  type = list(string)
  validation {
    condition     = length(var.PRIVATE_SUBNET_IDS) >= 2
    error_message = "At least two private subnets are required."
  }
}
variable "BACKEND_SECURITY_GROUP_ID" {
  type = string
}
variable "FRONTEND_SECURITY_GROUP_ID" {
  type = string
}
variable "DB_SECURITY_GROUP_ID" {
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
variable "FRONTEND_TARGET_GROUP_ARN" {
  type = string
}
variable "FRONTEND_CONTAINER_NAME" {
  type = string
}
variable "FRONTEND_CONTAINER_PORT" {
  type = number
}
variable "BACKEND_SERVICE_REGISTRY_ARN" {
  type = string
}
variable "BACKEND_CONTAINER_NAME" {
  type = string
}
variable "DB_SERVICE_REGISTRY_ARN" {
  type = string
}
variable "DB_CONTAINER_NAME" {
  type = string
}
variable "ENABLE_EXECUTE_COMMAND" {
  type = bool
}
variable "PROJECT_NAME" {
  type = string
}
variable "ENVIRONMENT" {
  type = string
}
variable "COMMON_TAGS" {
  description = "Common tags for all resources"
  type        = map(string)
}