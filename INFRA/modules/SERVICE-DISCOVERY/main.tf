resource "aws_service_discovery_http_namespace" "main" {
  name = var.NAMESPACE_NAME

  tags = {
    Name        = var.NAMESPACE_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}