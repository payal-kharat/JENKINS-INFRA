project_name = "app-3"
environment  = "uat"
COMMON_TAGS = {
  Project     = "app-3"
  Environment = "uat"
  ManagedBy   = "Terraform"
  Owner       = "Payal"
}

vpc_cidr = "10.30.0.0/16"

availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

public_subnet_cidrs = [
  "10.30.1.0/24",
  "10.30.2.0/24"
]

private_subnet_cidrs = [
  "10.30.11.0/24",
  "10.30.12.0/24"
]

backend_ecr_repository_name  = "app-3-uat-backend"
frontend_ecr_repository_name = "app-3-uat-frontend"
db_ecr_repository_name       = "app-3-uat-db"

ecs_execution_role_name = "app-3-uat-ecs-execution-role"
ecs_task_role_name      = "app-3-uat-ecs-task-role"

backend_log_group_name  = "/ecs/app-3-uat-backend"
frontend_log_group_name = "/ecs/app-3-uat-frontend"
db_log_group_name       = "/ecs/app-3-uat-db"

log_retention_days = 14

ecs_cluster_name   = "app-3-uat-cluster"
container_insights = "enabled"

SERVICE_DISCOVERY_NAMESPACE_NAME = "app3-uat.local"

BACKEND_SERVICE_DISCOVERY_NAME = "app3-backend"
DB_SERVICE_DISCOVERY_NAME      = "app3-db"
ALB_NAME                       = "app-3-uat-alb"
FRONTEND_TARGET_GROUP_NAME     = "app-3-uat-frontend-tg"
ALB_LISTENER_PORT              = 80
FRONTEND_CONTAINER_PORT        = 80
HEALTH_CHECK_PATH              = "/"
HEALTH_CHECK_PORT              = "traffic-port"

AWS_REGION = "us-east-1"

BACKEND_TASK_DEFINITION_FAMILY  = "app-3-uat-backend"
FRONTEND_TASK_DEFINITION_FAMILY = "app-3-uat-frontend"
DB_TASK_DEFINITION_FAMILY       = "app-3-uat-db"

BACKEND_IMAGE_URI  = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-3-uat-backend:latest"
FRONTEND_IMAGE_URI = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-3-uat-frontend:latest"
DB_IMAGE_URI       = "552940445807.dkr.ecr.us-east-1.amazonaws.com/app-3-uat-db:latest"

BACKEND_CPU    = 256
BACKEND_MEMORY = 512

FRONTEND_CPU    = 256
FRONTEND_MEMORY = 512

DB_CPU    = 256
DB_MEMORY = 512

BACKEND_CONTAINER_PORT = 8080
FRONTEND_CONT_PORT     = 80
DB_CONTAINER_PORT      = 3306

BACKEND_ADDRESS = "0.0.0.0:8080"

MYSQL_PASSWORD = "rootpassword"
MYSQL_HOST     = "app3-db.app3-dev.local"
MYSQL_USER     = "root"
# PG_PASSWORD = "CHANGE_ME"

MYSQL_DATABASE      = "example"
MYSQL_ROOT_PASSWORD = "rootpassword"
# POSTGRES_PASSWORD = "CHANGE_ME"

BACKEND_SERVICE_NAME  = "app-3-uat-backend-service"
FRONTEND_SERVICE_NAME = "app-3-uat-frontend-service"
DB_SERVICE_NAME       = "app-3-uat-db-service"

DESIRED_BACKEND_COUNT  = 1
DESIRED_FRONTEND_COUNT = 1
DESIRED_DB_COUNT       = 1

BACKEND_DISCOVERY_NAME        = "app3-backend"
BACKEND_PORT_NAME             = "backend"
BACKEND_CLIENT_ALIAS_DNS_NAME = "app3-backend"
BACKEND_CLIENT_ALIAS_PORT     = 8080

DB_DISCOVERY_NAME        = "app3-db"
DB_PORT_NAME             = "db"
DB_CLIENT_ALIAS_DNS_NAME = "app3-db"
DB_CLIENT_ALIAS_PORT     = 3306
ENABLE_EXECUTE_COMMAND   = true

