resource "aws_ecs_service" "backend" {
  name            = var.BACKEND_SERVICE_NAME
  cluster         = var.ECS_CLUSTER_ID
  task_definition = var.BACKEND_TASK_DEFINITION_ARN
  desired_count   = var.DESIRED_BACKEND_COUNT
  launch_type     = "FARGATE"

  enable_execute_command = var.ENABLE_EXECUTE_COMMAND

  network_configuration {
    subnets          = var.PRIVATE_SUBNET_IDS
    security_groups  = [var.BACKEND_SECURITY_GROUP_ID]
    assign_public_ip = false
  }

  service_connect_configuration {
    enabled   = true
    namespace = var.SERVICE_DISCOVERY_NAMESPACE_ARN

    service {
      port_name      = var.BACKEND_PORT_NAME
      discovery_name = var.BACKEND_DISCOVERY_NAME

      client_alias {
        dns_name = var.BACKEND_CLIENT_ALIAS_DNS_NAME
        port     = var.BACKEND_CLIENT_ALIAS_PORT
      }
    }
  }

  tags = {
    Name        = var.BACKEND_SERVICE_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}

resource "aws_ecs_service" "frontend" {
  name            = var.FRONTEND_SERVICE_NAME
  cluster         = var.ECS_CLUSTER_ID
  task_definition = var.FRONTEND_TASK_DEFINITION_ARN
  desired_count   = var.DESIRED_FRONTEND_COUNT
  launch_type     = "FARGATE"

  enable_execute_command = var.ENABLE_EXECUTE_COMMAND

  network_configuration {
    subnets          = var.PRIVATE_SUBNET_IDS
    security_groups  = [var.FRONTEND_SECURITY_GROUP_ID]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = var.FRONTEND_TARGET_GROUP_ARN
    container_name   = var.FRONTEND_CONTAINER_NAME
    container_port   = var.FRONTEND_CONTAINER_PORT
  }

  service_connect_configuration {
    enabled   = true
    namespace = var.SERVICE_DISCOVERY_NAMESPACE_ARN
  }

  tags = {
    Name        = var.FRONTEND_SERVICE_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}

resource "aws_ecs_service" "db" {
  name            = var.DB_SERVICE_NAME
  cluster         = var.ECS_CLUSTER_ID
  task_definition = var.DB_TASK_DEFINITION_ARN
  desired_count   = var.DESIRED_DB_COUNT
  launch_type     = "FARGATE"

  enable_execute_command = var.ENABLE_EXECUTE_COMMAND

  network_configuration {
    subnets          = var.PRIVATE_SUBNET_IDS
    security_groups  = [var.DB_SECURITY_GROUP_ID]
    assign_public_ip = false
  }

  service_connect_configuration {
    enabled   = true
    namespace = var.SERVICE_DISCOVERY_NAMESPACE_ARN

    service {
      port_name      = var.DB_PORT_NAME
      discovery_name = var.DB_DISCOVERY_NAME

      client_alias {
        dns_name = var.DB_CLIENT_ALIAS_DNS_NAME
        port     = var.DB_CLIENT_ALIAS_PORT
      }
    }
  }

  tags = {
    Name        = var.DB_SERVICE_NAME
    Environment = var.ENVIRONMENT
    Project     = var.PROJECT_NAME
  }
}