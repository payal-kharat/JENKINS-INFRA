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
variable "environment" {
  type = string
}
variable "project_name" {
  type = string
}
variable "COMMON_TAGS" {
  description = "Common tags for all resources"
  type        = map(string)
}