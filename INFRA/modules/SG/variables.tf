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

variable "COMMON_TAGS" {
  description = "Common tags for all resources"
  type        = map(string)
}
variable "vpc_id" {
  type = string
}