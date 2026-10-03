variable "ALB_NAME" {
  type = string
}
variable "FRONTEND_TARGET_GROUP_NAME" {
  type = string
}
variable "ALB_SECURITY_GROUP_ID" {
  type = string
}
variable "PUBLIC_SUBNET_IDS" {
  type = list(string)

  validation {
    condition     = length(var.PUBLIC_SUBNET_IDS) >= 2
    error_message = "At least two public subnets are required for the ALB."
  }
}
variable "VPC_ID" {
  type = string
}
variable "FRONTEND_CONTAINER_PORT" {
  type = number
}
variable "ALB_LISTENER_PORT" {
  type = number
}
variable "HEALTH_CHECK_PATH" {
  type = string
}
variable "HEALTH_CHECK_PORT" {
  type = string
}
variable "PROJECT_NAME" {
  type = string
}
variable "ENVIRONMENT" {
  type = string
}