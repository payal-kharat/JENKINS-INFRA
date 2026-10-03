project_name = "employee-mgm"
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

backend_ecr_repository_name  = "employee-mgm-dev-backend"
frontend_ecr_repository_name = "employee-mgm-dev-frontend"
db_ecr_repository_name       = "employee-mgm-dev-db"

ecs_execution_role_name = "employee-mgm-dev-ecs-execution-role"
ecs_task_role_name      = "employee-mgm-dev-ecs-task-role"

backend_log_group_name  = "/ecs/employee-mgm-dev-backend"
frontend_log_group_name = "/ecs/employee-mgm-dev-frontend"
db_log_group_name       = "/ecs/employee-mgm-dev-db"

log_retention_days = 7

ecs_cluster_name   = "employee-mgm-dev-cluster"
container_insights = "enabled"

SERVICE_DISCOVERY_NAMESPACE_NAME = "emp-dev.local"

BACKEND_SERVICE_DISCOVERY_NAME = "emp-backend"
DB_SERVICE_DISCOVERY_NAME      = "emp-db"

ALB_NAME                   = "employee-mgm-dev-alb"
FRONTEND_TARGET_GROUP_NAME = "employee-mgm-dev-frontend-tg"
ALB_LISTENER_PORT          = 80
FRONTEND_CONTAINER_PORT    = 80
HEALTH_CHECK_PATH          = "/"
HEALTH_CHECK_PORT          = "traffic-port"

AWS_REGION = "us-east-1"

BACKEND_TASK_DEFINITION_FAMILY  = "employee-mgm-dev-backend"
FRONTEND_TASK_DEFINITION_FAMILY = "employee-mgm-dev-frontend"
DB_TASK_DEFINITION_FAMILY       = "employee-mgm-dev-db"

BACKEND_IMAGE_URI  = "552940445807.dkr.ecr.us-east-1.amazonaws.com/employee-mgm-dev-backend:latest"
FRONTEND_IMAGE_URI = "552940445807.dkr.ecr.us-east-1.amazonaws.com/employee-mgm-dev-frontend:latest"
DB_IMAGE_URI       = "552940445807.dkr.ecr.us-east-1.amazonaws.com/employee-mgm-dev-db:latest"

BACKEND_CPU    = 256
BACKEND_MEMORY = 512

FRONTEND_CPU    = 256
FRONTEND_MEMORY = 512

DB_CPU    = 256
DB_MEMORY = 512

BACKEND_CONTAINER_PORT = 5000
FRONTEND_CONT_PORT     = 80
DB_CONTAINER_PORT      = 3306

BACKEND_ADDRESS = "0.0.0.0:5000"
#app-3
# MYSQL_PASSWORD     = "rootpassword"
# MYSQL_HOST     = "app3-db.app3-dev.local"
# MYSQL_USER     = "root"

#  MYSQL_DATABASE       = "example"
#  MYSQL_ROOT_PASSWORD     = "rootpassword"

#emp-mgm
MYSQL_PASSWORD       = "employee123"
MYSQL_USER           = "employee_user"
MYSQL_DATABASE       = "employee_db"
MYSQL_ROOT_PASSWORD  = "rootpassword"

DB_NAME              = "employee_db"
DB_USER              = "employee_user"
DB_PORT              = "3306"
DB_PASSWORD          = "employee123"
DB_HOST              = "emp-db.emp-dev.local"

BACKEND_SERVICE_NAME  = "employee-mgm-dev-backend-service"
FRONTEND_SERVICE_NAME = "employee-mgm-dev-frontend-service"
DB_SERVICE_NAME       = "employee-mgm-dev-db-service"

DESIRED_BACKEND_COUNT  = 1
DESIRED_FRONTEND_COUNT = 1
DESIRED_DB_COUNT       = 1

BACKEND_DISCOVERY_NAME        = "employee-mgm-backend"
BACKEND_PORT_NAME             = "backend"
BACKEND_CLIENT_ALIAS_DNS_NAME = "employee-mgm-backend"
BACKEND_CLIENT_ALIAS_PORT     = 5000

DB_DISCOVERY_NAME        = "employee-mgm-db"
DB_PORT_NAME             = "db"
DB_CLIENT_ALIAS_DNS_NAME = "employee-mgm-db"
DB_CLIENT_ALIAS_PORT     = 3306
ENABLE_EXECUTE_COMMAND   = true

