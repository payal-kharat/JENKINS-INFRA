output "BACKEND_TASK_DEFINITION_ARN" {
  value = aws_ecs_task_definition.backend.arn
}
output "BACKEND_TASK_DEFINITION_FAMILY" {
  value = aws_ecs_task_definition.backend.family
}
output "BACKEND_TASK_DEFINITION_REVISION" {
  value = aws_ecs_task_definition.backend.revision
}
output "FRONTEND_TASK_DEFINITION_ARN" {
  value = aws_ecs_task_definition.frontend.arn
}
output "FRONTEND_TASK_DEFINITION_FAMILY" {
  value = aws_ecs_task_definition.frontend.family
}
output "FRONTEND_TASK_DEFINITION_REVISION" {
  value = aws_ecs_task_definition.frontend.revision
}
output "DB_TASK_DEFINITION_ARN" {
  value = aws_ecs_task_definition.db.arn
}
output "DB_TASK_DEFINITION_FAMILY" {
  value = aws_ecs_task_definition.db.family
}
output "DB_TASK_DEFINITION_REVISION" {
  value = aws_ecs_task_definition.db.revision
}