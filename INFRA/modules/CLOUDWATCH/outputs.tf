output "backend_log_group_name" {
  value = aws_cloudwatch_log_group.backend.name
}
output "frontend_log_group_name" {
  value = aws_cloudwatch_log_group.frontend.name
}
output "db_log_group_name" {
  value = aws_cloudwatch_log_group.db.name
}
output "backend_log_group_arn" {
  value = aws_cloudwatch_log_group.backend.arn
}
output "frontend_log_group_arn" {
  value = aws_cloudwatch_log_group.frontend.arn
}
output "db_log_group_arn" {
  value = aws_cloudwatch_log_group.db.arn
}