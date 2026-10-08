resource "aws_secretsmanager_secret" "employee_mgm" {
  name        = var.SECRET_NAME
  description = "Employee Management ${var.environment} database credentials"

  tags = var.COMMON_TAGS
}




# resource "aws_secretsmanager_secret" "employee_mgm" {
#   name        = var.SECRET_NAME
#   description = "Employee Management ${var.environment} database credentials"

#   tags = var.COMMON_TAGS
# }

# resource "aws_secretsmanager_secret_version" "employee_mgm" {
#   secret_id = aws_secretsmanager_secret.employee_mgm.id

#   secret_string = jsonencode({
#     MYSQL_USER          = var.MYSQL_USER
#     MYSQL_PASSWORD      = var.MYSQL_PASSWORD
#     MYSQL_ROOT_PASSWORD = var.MYSQL_ROOT_PASSWORD
#     DB_USER             = var.DB_USER
#     DB_PASSWORD         = var.DB_PASSWORD
#   })
# }