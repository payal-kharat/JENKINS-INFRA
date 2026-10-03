output "NAMESPACE_ID" {
  value = aws_service_discovery_private_dns_namespace.main.id
}
output "NAMESPACE_ARN" {
  value = aws_service_discovery_private_dns_namespace.main.arn
}
output "NAMESPACE_NAME" {
  value = aws_service_discovery_private_dns_namespace.main.name
}
output "BACKEND_SERVICE_ARN" {
  value = aws_service_discovery_service.backend.arn
}
output "BACKEND_SERVICE_ID" {
  value = aws_service_discovery_service.backend.id
}
output "DB_SERVICE_ARN" {
  value = aws_service_discovery_service.db.arn
}
output "DB_SERVICE_ID" {
  value = aws_service_discovery_service.db.id
}