output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "public_subnet_ids_by_az" {
  value = module.vpc.public_subnet_ids_by_az
}

output "public_subnet_cidrs" {
  value = module.vpc.public_subnet_cidrs
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "private_subnet_ids_by_az" {
  value = module.vpc.private_subnet_ids_by_az
}

output "private_subnet_cidrs" {
  value = module.vpc.private_subnet_cidrs
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}

output "public_route_table_id" {
  value = module.vpc.public_route_table_id
}

output "private_route_table_id" {
  value = module.vpc.private_route_table_id
}

output "alb_security_group_id" {
  value = module.security_groups.alb_security_group_id
}

output "frontend_security_group_id" {
  value = module.security_groups.frontend_security_group_id
}

output "backend_security_group_id" {
  value = module.security_groups.backend_security_group_id
}

output "db_security_group_id" {
  value = module.security_groups.db_security_group_id
}

output "backend_ecr_repository_name" {
  value = module.ecr.backend_repository_name
}

output "frontend_ecr_repository_name" {
  value = module.ecr.frontend_repository_name
}

output "db_ecr_repository_name" {
  value = module.ecr.db_repository_name
}

output "backend_ecr_repository_url" {
  value = module.ecr.backend_repository_url
}

output "frontend_ecr_repository_url" {
  value = module.ecr.frontend_repository_url
}

output "db_ecr_repository_url" {
  value = module.ecr.db_repository_url
}

output "backend_ecr_repository_arn" {
  value = module.ecr.backend_repository_arn
}

output "frontend_ecr_repository_arn" {
  value = module.ecr.frontend_repository_arn
}

output "db_ecr_repository_arn" {
  value = module.ecr.db_repository_arn
}

output "ALB_ID" {
  value = module.ALB.ALB_ID
}

output "ALB_ARN" {
  value = module.ALB.ALB_ARN
}

output "ALB_DNS_NAME" {
  value = module.ALB.ALB_DNS_NAME
}

output "ALB_ZONE_ID" {
  value = module.ALB.ALB_ZONE_ID
}

output "FRONTEND_TARGET_GROUP_ARN" {
  value = module.ALB.FRONTEND_TARGET_GROUP_ARN
}

output "FRONTEND_TARGET_GROUP_NAME" {
  value = module.ALB.FRONTEND_TARGET_GROUP_NAME
}

output "ALB_LISTENER_ARN" {
  value = module.ALB.ALB_LISTENER_ARN
}

output "BACKEND_TASK_DEFINITION_ARN" {
  value = module.ECS_TASK_DEFINITIONS.BACKEND_TASK_DEFINITION_ARN
}

output "BACKEND_TASK_DEFINITION_REVISION" {
  value = module.ECS_TASK_DEFINITIONS.BACKEND_TASK_DEFINITION_REVISION
}

output "FRONTEND_TASK_DEFINITION_ARN" {
  value = module.ECS_TASK_DEFINITIONS.FRONTEND_TASK_DEFINITION_ARN
}

output "FRONTEND_TASK_DEFINITION_REVISION" {
  value = module.ECS_TASK_DEFINITIONS.FRONTEND_TASK_DEFINITION_REVISION
}

output "DB_TASK_DEFINITION_ARN" {
  value = module.ECS_TASK_DEFINITIONS.DB_TASK_DEFINITION_ARN
}

output "DB_TASK_DEFINITION_REVISION" {
  value = module.ECS_TASK_DEFINITIONS.DB_TASK_DEFINITION_REVISION
}

output "BACKEND_SERVICE_NAME" {
  value = module.ECS_SERVICES.BACKEND_SERVICE_NAME
}

output "FRONTEND_SERVICE_NAME" {
  value = module.ECS_SERVICES.FRONTEND_SERVICE_NAME
}

output "DB_SERVICE_NAME" {
  value = module.ECS_SERVICES.DB_SERVICE_NAME
}