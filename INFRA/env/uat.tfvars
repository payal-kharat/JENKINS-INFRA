project_name = "employee-mgm"
environment  = "uat"
COMMON_TAGS = {
  Project     = "employee-mgm"
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

backend_ecr_repository_name  = "employee-mgm-uat-backend"
frontend_ecr_repository_name = "employee-mgm-uat-frontend"
db_ecr_repository_name       = "employee-mgm-uat-db"
BACKEND_HOST                 = "emp-backend.emp-uat.local"

ecs_execution_role_name = "employee-mgm-uat-ecs-execution-role"
ecs_task_role_name      = "employee-mgm-uat-ecs-task-role"

backend_log_group_name  = "/ecs/employee-mgm-uat-backend"
frontend_log_group_name = "/ecs/employee-mgm-uat-frontend"
db_log_group_name       = "/ecs/employee-mgm-uat-db"

log_retention_days = 14

ecs_cluster_name   = "employee-mgm-uat-cluster"
container_insights = "enabled"

SERVICE_DISCOVERY_NAMESPACE_NAME = "emp-uat.local"

BACKEND_SERVICE_DISCOVERY_NAME = "emp-backend"
DB_SERVICE_DISCOVERY_NAME      = "emp-db"
ALB_NAME                       = "employee-mgm-uat-alb"
FRONTEND_TARGET_GROUP_NAME     = "employee-mgm-uat-frontend-tg"
ALB_LISTENER_PORT              = 80
FRONTEND_CONTAINER_PORT        = 80
HEALTH_CHECK_PATH              = "/"
HEALTH_CHECK_PORT              = "traffic-port"

AWS_REGION = "us-east-1"

BACKEND_TASK_DEFINITION_FAMILY  = "employee-mgm-uat-backend"
FRONTEND_TASK_DEFINITION_FAMILY = "employee-mgm-uat-frontend"
DB_TASK_DEFINITION_FAMILY       = "employee-mgm-uat-db"

BACKEND_IMAGE_URI  = "hasicorp/http-echo:1.0"
FRONTEND_IMAGE_URI = "nginx:latest"
DB_IMAGE_URI       = "mysql:8.0"

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

MYSQL_DATABASE = "employee_db"

DB_NAME = "employee_db"
DB_PORT = "3306"
DB_HOST = "emp-db.emp-uat.local"
# MYSQL_USER          = "your-existing-mysql-user"
# MYSQL_PASSWORD      = "your-existing-mysql-password"
# MYSQL_ROOT_PASSWORD = "your-existing-mysql-root-password"

# DB_USER     = "your-existing-db-user"
# DB_PASSWORD = "your-existing-db-password"

BACKEND_SERVICE_NAME  = "employee-mgm-uat-backend-service"
FRONTEND_SERVICE_NAME = "employee-mgm-uat-frontend-service"
DB_SERVICE_NAME       = "employee-mgm-uat-db-service"

DESIRED_BACKEND_COUNT  = 1
DESIRED_FRONTEND_COUNT = 1
DESIRED_DB_COUNT       = 1

BACKEND_DISCOVERY_NAME        = "employee-mgm-backend"
BACKEND_PORT_NAME             = "backend"
BACKEND_CLIENT_ALIAS_DNS_NAME = "employee-mgm-backend"
BACKEND_CLIENT_ALIAS_PORT     = 8080

DB_DISCOVERY_NAME        = "employee-mgm-db"
DB_PORT_NAME             = "db"
DB_CLIENT_ALIAS_DNS_NAME = "employee-mgm-db"
DB_CLIENT_ALIAS_PORT     = 3306
ENABLE_EXECUTE_COMMAND   = true
SECRET_NAME              = "employee-mgm-uat-secrets"

