output "BACKEND_SERVICE_ID" {
  value = aws_ecs_service.backend.id
}
output "BACKEND_SERVICE_ARN" {
  value = aws_ecs_service.backend.arn
}
output "BACKEND_SERVICE_NAME" {
  value = aws_ecs_service.backend.name
}
output "FRONTEND_SERVICE_ID" {
  value = aws_ecs_service.frontend.id
}
output "FRONTEND_SERVICE_ARN" {
  value = aws_ecs_service.frontend.arn
}
output "FRONTEND_SERVICE_NAME" {
  value = aws_ecs_service.frontend.name
}
output "DB_SERVICE_ID" {
  value = aws_ecs_service.db.id
}
output "DB_SERVICE_ARN" {
  value = aws_ecs_service.db.arn
}
output "DB_SERVICE_NAME" {
  value = aws_ecs_service.db.name
}