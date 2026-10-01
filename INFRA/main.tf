# VPC 
module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  environment  = var.environment

  vpc_cidr = var.vpc_cidr

  availability_zones = var.availability_zones

  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "security_groups" {
  source = "./modules/SG"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
}

module "ecr" {
  source = "./modules/ECR"

  backend_ecr_repository_name  = var.backend_ecr_repository_name
  frontend_ecr_repository_name = var.frontend_ecr_repository_name
  db_ecr_repository_name       = var.db_ecr_repository_name
}

module "iam" {
  source = "./modules/IAM"

  ecs_execution_role_name = var.ecs_execution_role_name
  ecs_task_role_name      = var.ecs_task_role_name
}

module "cloudwatch_logs" {
  source = "./modules/CLOUDWATCH"

  backend_log_group_name  = var.backend_log_group_name
  frontend_log_group_name = var.frontend_log_group_name
  db_log_group_name       = var.db_log_group_name
  log_retention_days      = var.log_retention_days
}

module "ecs_cluster" {
  source = "./modules/ECS-CLUSTER"

  ecs_cluster_name   = var.ecs_cluster_name
  container_insights = var.container_insights
  environment        = var.environment
  project_name       = var.project_name
}

module "SERVICE_DISCOVERY" {
  source = "./modules/SERVICE-DISCOVERY"

  NAMESPACE_NAME = var.SERVICE_DISCOVERY_NAMESPACE_NAME
  ENVIRONMENT    = var.environment
  PROJECT_NAME   = var.project_name
}

module "ALB" {
  source = "./modules/ALB"

  ALB_NAME                   = var.ALB_NAME
  FRONTEND_TARGET_GROUP_NAME = var.FRONTEND_TARGET_GROUP_NAME
  ALB_SECURITY_GROUP_ID      = module.security_groups.alb_security_group_id
  PUBLIC_SUBNET_IDS          = module.vpc.public_subnet_ids
  VPC_ID                     = module.vpc.vpc_id
  FRONTEND_CONTAINER_PORT    = var.FRONTEND_CONTAINER_PORT
  ALB_LISTENER_PORT          = var.ALB_LISTENER_PORT
  HEALTH_CHECK_PATH          = var.HEALTH_CHECK_PATH
  HEALTH_CHECK_PORT          = var.HEALTH_CHECK_PORT
  PROJECT_NAME               = var.project_name
  ENVIRONMENT                = var.environment
}

module "ECS_TASK_DEFINITIONS" {
  source = "./modules/ECS-TD"

  BACKEND_TASK_DEFINITION_FAMILY  = var.BACKEND_TASK_DEFINITION_FAMILY
  FRONTEND_TASK_DEFINITION_FAMILY = var.FRONTEND_TASK_DEFINITION_FAMILY
  DB_TASK_DEFINITION_FAMILY       = var.DB_TASK_DEFINITION_FAMILY

  BACKEND_IMAGE_URI  = var.BACKEND_IMAGE_URI
  FRONTEND_IMAGE_URI = var.FRONTEND_IMAGE_URI
  DB_IMAGE_URI       = var.DB_IMAGE_URI

  ECS_EXECUTION_ROLE_ARN = module.iam.ecs_execution_role_arn
  ECS_TASK_ROLE_ARN      = module.iam.ecs_task_role_arn

  BACKEND_LOG_GROUP_NAME  = var.backend_log_group_name
  FRONTEND_LOG_GROUP_NAME = var.frontend_log_group_name
  DB_LOG_GROUP_NAME       = var.db_log_group_name

  AWS_REGION = var.AWS_REGION

  BACKEND_CPU    = var.BACKEND_CPU
  BACKEND_MEMORY = var.BACKEND_MEMORY

  FRONTEND_CPU    = var.FRONTEND_CPU
  FRONTEND_MEMORY = var.FRONTEND_MEMORY

  DB_CPU    = var.DB_CPU
  DB_MEMORY = var.DB_MEMORY

  BACKEND_CONTAINER_PORT = var.BACKEND_CONTAINER_PORT
  FRONTEND_CONT_PORT     = var.FRONTEND_CONT_PORT
  DB_CONTAINER_PORT      = var.DB_CONTAINER_PORT

  BACKEND_ADDRESS = var.BACKEND_ADDRESS

  # PG_HOST     = var.PG_HOST
  # PG_DBNAME   = var.PG_DBNAME
  # PG_USER     = var.PG_USER
  # PG_PASSWORD = var.PG_PASSWORD

  # POSTGRES_DB       = var.POSTGRES_DB
  # POSTGRES_USER     = var.POSTGRES_USER
  # POSTGRES_PASSWORD = var.POSTGRES_PASSWORD
}

module "ECS_SERVICES" {
  source = "./modules/ECS-SERVICE"

  BACKEND_SERVICE_NAME  = var.BACKEND_SERVICE_NAME
  FRONTEND_SERVICE_NAME = var.FRONTEND_SERVICE_NAME
  DB_SERVICE_NAME       = var.DB_SERVICE_NAME

  ECS_CLUSTER_ID = module.ecs_cluster.ecs_cluster_id

  BACKEND_TASK_DEFINITION_ARN  = module.ECS_TASK_DEFINITIONS.BACKEND_TASK_DEFINITION_ARN
  FRONTEND_TASK_DEFINITION_ARN = module.ECS_TASK_DEFINITIONS.FRONTEND_TASK_DEFINITION_ARN
  DB_TASK_DEFINITION_ARN       = module.ECS_TASK_DEFINITIONS.DB_TASK_DEFINITION_ARN

  PRIVATE_SUBNET_IDS = module.vpc.private_subnet_ids

  BACKEND_SECURITY_GROUP_ID  = module.security_groups.backend_security_group_id
  FRONTEND_SECURITY_GROUP_ID = module.security_groups.frontend_security_group_id
  DB_SECURITY_GROUP_ID       = module.security_groups.db_security_group_id

  DESIRED_BACKEND_COUNT  = var.DESIRED_BACKEND_COUNT
  DESIRED_FRONTEND_COUNT = var.DESIRED_FRONTEND_COUNT
  DESIRED_DB_COUNT       = var.DESIRED_DB_COUNT

  FRONTEND_TARGET_GROUP_ARN = module.ALB.FRONTEND_TARGET_GROUP_ARN
  FRONTEND_CONTAINER_NAME   = "frontend"
  FRONTEND_CONTAINER_PORT   = var.FRONTEND_CONTAINER_PORT

  SERVICE_DISCOVERY_NAMESPACE_ARN = module.SERVICE_DISCOVERY.NAMESPACE_ARN

  BACKEND_DISCOVERY_NAME        = var.BACKEND_DISCOVERY_NAME
  BACKEND_PORT_NAME             = var.BACKEND_PORT_NAME
  BACKEND_CLIENT_ALIAS_DNS_NAME = var.BACKEND_CLIENT_ALIAS_DNS_NAME
  BACKEND_CLIENT_ALIAS_PORT     = var.BACKEND_CLIENT_ALIAS_PORT

  DB_DISCOVERY_NAME        = var.DB_DISCOVERY_NAME
  DB_PORT_NAME             = var.DB_PORT_NAME
  DB_CLIENT_ALIAS_DNS_NAME = var.DB_CLIENT_ALIAS_DNS_NAME
  DB_CLIENT_ALIAS_PORT     = var.DB_CLIENT_ALIAS_PORT

  ENABLE_EXECUTE_COMMAND = var.ENABLE_EXECUTE_COMMAND

  PROJECT_NAME = var.project_name
  ENVIRONMENT  = var.environment
}
