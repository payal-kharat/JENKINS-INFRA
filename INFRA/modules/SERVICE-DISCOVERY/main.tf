resource "aws_service_discovery_private_dns_namespace" "main" {
  name = var.NAMESPACE_NAME
  vpc  = var.VPC_ID

  tags = {
    Name        = var.NAMESPACE_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}

resource "aws_service_discovery_service" "backend" {
  name = var.BACKEND_SERVICE_DISCOVERY_NAME

  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.main.id

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }

  health_check_custom_config {
    failure_threshold = 1
  }

  tags = {
    Name        = var.BACKEND_SERVICE_DISCOVERY_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}

resource "aws_service_discovery_service" "db" {
  name = var.DB_SERVICE_DISCOVERY_NAME

  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.main.id

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }

  health_check_custom_config {
    failure_threshold = 1
  }

  tags = {
    Name        = var.DB_SERVICE_DISCOVERY_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}