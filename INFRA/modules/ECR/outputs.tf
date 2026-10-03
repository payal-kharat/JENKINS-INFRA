output "backend_repository_name" {
  value = aws_ecr_repository.backend.name
}
output "frontend_repository_name" {
  value = aws_ecr_repository.frontend.name
}
output "db_repository_name" {
  value = aws_ecr_repository.db.name
}
output "backend_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}
output "frontend_repository_url" {
  value = aws_ecr_repository.frontend.repository_url
}
output "db_repository_url" {
  value = aws_ecr_repository.db.repository_url
}
output "backend_repository_arn" {
  value = aws_ecr_repository.backend.arn
}
output "frontend_repository_arn" {
  value = aws_ecr_repository.frontend.arn
}
output "db_repository_arn" {
  value = aws_ecr_repository.db.arn
}