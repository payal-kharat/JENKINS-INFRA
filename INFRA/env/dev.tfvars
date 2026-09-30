project_name = "app-1"
environment  = "dev"

vpc_cidr = "10.10.0.0/16"

availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

public_subnet_cidrs = [
  "10.10.1.0/24",
  "10.10.2.0/24"
]

private_subnet_cidrs = [
  "10.10.11.0/24",
  "10.10.12.0/24"
]

backend_ecr_repository_name  = "app-1-dev-backend"
frontend_ecr_repository_name = "app-1-dev-frontend"
db_ecr_repository_name       = "app-1-dev-db"

ecs_execution_role_name = "app-1-dev-ecs-execution-role"
ecs_task_role_name      = "app-1-dev-ecs-task-role"

backend_log_group_name  = "/ecs/app-1-dev-backend"
frontend_log_group_name = "/ecs/app-1-dev-frontend"
db_log_group_name       = "/ecs/app-1-dev-db"

log_retention_days = 7

ecs_cluster_name   = "app-1-dev-cluster"
container_insights = "enabled"

SERVICE_DISCOVERY_NAMESPACE_NAME = "app1-dev"

ALB_NAME                   = "app-1-dev-alb"
FRONTEND_TARGET_GROUP_NAME = "app-1-dev-frontend-tg"
ALB_LISTENER_PORT          = 80
FRONTEND_CONTAINER_PORT    = 80
HEALTH_CHECK_PATH          = "/"
HEALTH_CHECK_PORT          = "traffic-port"

AWS_REGION = "us-east-1"

BACKEND_TASK_DEFINITION_FAMILY  = "app-1-dev-backend"
FRONTEND_TASK_DEFINITION_FAMILY = "app-1-dev-frontend"
DB_TASK_DEFINITION_FAMILY       = "app-1-dev-db"

BACKEND_IMAGE_URI  = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-1-dev-backend:latest"
FRONTEND_IMAGE_URI = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-1-dev-frontend:latest"
DB_IMAGE_URI       = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-1-dev-db:latest"

BACKEND_CPU    = 256
BACKEND_MEMORY = 512

FRONTEND_CPU    = 256
FRONTEND_MEMORY = 512

DB_CPU    = 256
DB_MEMORY = 512

BACKEND_CONTAINER_PORT = 8000
FRONTEND_CONT_PORT     = 80
DB_CONTAINER_PORT      = 5432

BACKEND_ADDRESS = "0.0.0.0:8000"

PG_HOST     = "app1-db"
PG_DBNAME   = "app1"
PG_USER     = "postgres"
PG_PASSWORD = "CHANGE_ME"

POSTGRES_DB       = "app1"
POSTGRES_USER     = "postgres"
POSTGRES_PASSWORD = "CHANGE_ME"

BACKEND_SERVICE_NAME  = "app-1-dev-backend-service"
FRONTEND_SERVICE_NAME = "app-1-dev-frontend-service"
DB_SERVICE_NAME       = "app-1-dev-db-service"

DESIRED_BACKEND_COUNT  = 1
DESIRED_FRONTEND_COUNT = 1
DESIRED_DB_COUNT       = 1

BACKEND_DISCOVERY_NAME        = "app1-backend"
BACKEND_PORT_NAME             = "backend"
BACKEND_CLIENT_ALIAS_DNS_NAME = "app1-backend"
BACKEND_CLIENT_ALIAS_PORT     = 8000

DB_DISCOVERY_NAME        = "app1-db"
DB_PORT_NAME             = "db"
DB_CLIENT_ALIAS_DNS_NAME = "app1-db"
DB_CLIENT_ALIAS_PORT     = 5432

ENABLE_EXECUTE_COMMAND = true

