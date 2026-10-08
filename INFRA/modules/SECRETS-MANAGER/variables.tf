# variable "SECRET_NAME" {
#   type = string
# }
# variable "environment" {
#   type = string
# }
# variable "COMMON_TAGS" {
#   type = map(string)
# }
# variable "MYSQL_USER" {
#   type      = string
#   sensitive = true
# }
# variable "MYSQL_PASSWORD" {
#   type      = string
#   sensitive = true
# }
# variable "MYSQL_ROOT_PASSWORD" {
#   type      = string
#   sensitive = true
# }
# variable "DB_USER" {
#   type      = string
#   sensitive = true
# }
# variable "DB_PASSWORD" {
#   type      = string
#   sensitive = true
# }

variable "SECRET_NAME" {
  type = string
}
variable "environment" {
  type = string
}
variable "COMMON_TAGS" {
  type = map(string)
}