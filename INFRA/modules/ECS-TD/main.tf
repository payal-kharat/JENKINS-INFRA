resource "aws_ecs_task_definition" "backend" {
  family                   = var.BACKEND_TASK_DEFINITION_FAMILY
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.BACKEND_CPU
  memory                   = var.BACKEND_MEMORY

  execution_role_arn = var.ECS_EXECUTION_ROLE_ARN
  task_role_arn      = var.ECS_TASK_ROLE_ARN

  container_definitions = jsonencode([
    {
      name      = "backend"
      image     = var.BACKEND_IMAGE_URI
      essential = true

      portMappings = [
        {
          name          = "backend"
          containerPort = var.BACKEND_CONTAINER_PORT
          hostPort      = var.BACKEND_CONTAINER_PORT
          protocol      = "tcp"
        }
      ]

      # environment = [
      #   {
      #     name  = "ADDRESS"
      #     value = var.BACKEND_ADDRESS
      #   },
      #   {
      #     name  = "PG_HOST"
      #     value = var.PG_HOST
      #   },
      #   {
      #     name  = "PG_DBNAME"
      #     value = var.PG_DBNAME
      #   },
      #   {
      #     name  = "PG_USER"
      #     value = var.PG_USER
      #   },
      #   {
      #     name  = "PG_PASSWORD"
      #     value = var.PG_PASSWORD
      #   }
      # ]

      logConfiguration = {
        logDriver = "awslogs"

        options = {
          awslogs-group         = var.BACKEND_LOG_GROUP_NAME
          awslogs-region        = var.AWS_REGION
          awslogs-stream-prefix = "backend"
        }
      }
    }
  ])
}

resource "aws_ecs_task_definition" "frontend" {
  family                   = var.FRONTEND_TASK_DEFINITION_FAMILY
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.FRONTEND_CPU
  memory                   = var.FRONTEND_MEMORY

  execution_role_arn = var.ECS_EXECUTION_ROLE_ARN
  task_role_arn      = var.ECS_TASK_ROLE_ARN

  container_definitions = jsonencode([
    {
      name      = "frontend"
      image     = var.FRONTEND_IMAGE_URI
      essential = true

      portMappings = [
        {
          name          = "frontend"
          containerPort = var.FRONTEND_CONT_PORT
          hostPort      = var.FRONTEND_CONT_PORT
          protocol      = "tcp"
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"

        options = {
          awslogs-group         = var.FRONTEND_LOG_GROUP_NAME
          awslogs-region        = var.AWS_REGION
          awslogs-stream-prefix = "frontend"
        }
      }
    }
  ])
}

resource "aws_ecs_task_definition" "db" {
  family                   = var.DB_TASK_DEFINITION_FAMILY
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.DB_CPU
  memory                   = var.DB_MEMORY

  execution_role_arn = var.ECS_EXECUTION_ROLE_ARN
  task_role_arn      = var.ECS_TASK_ROLE_ARN

  container_definitions = jsonencode([
    {
      name      = "db"
      image     = var.DB_IMAGE_URI
      essential = true

      portMappings = [
        {
          name          = "db"
          containerPort = var.DB_CONTAINER_PORT
          hostPort      = var.DB_CONTAINER_PORT
          protocol      = "tcp"
        }
      ]

      # environment = [
      #   {
      #     name  = "POSTGRES_DB"
      #     value = var.POSTGRES_DB
      #   },
      #   {
      #     name  = "POSTGRES_USER"
      #     value = var.POSTGRES_USER
      #   },
      #   {
      #     name  = "POSTGRES_PASSWORD"
      #     value = var.POSTGRES_PASSWORD
      #   }
      # ]

      logConfiguration = {
        logDriver = "awslogs"

        options = {
          awslogs-group         = var.DB_LOG_GROUP_NAME
          awslogs-region        = var.AWS_REGION
          awslogs-stream-prefix = "db"
        }
      }
    }
  ])
}
