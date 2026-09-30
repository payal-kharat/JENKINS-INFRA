resource "aws_cloudwatch_log_group" "backend" {
  name              = var.backend_log_group_name
  retention_in_days = var.log_retention_days
}

resource "aws_cloudwatch_log_group" "frontend" {
  name              = var.frontend_log_group_name
  retention_in_days = var.log_retention_days
}

resource "aws_cloudwatch_log_group" "db" {
  name              = var.db_log_group_name
  retention_in_days = var.log_retention_days
}