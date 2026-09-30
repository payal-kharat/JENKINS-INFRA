resource "aws_ecs_cluster" "main" {
  name = var.ecs_cluster_name

  setting {
    name  = "containerInsights"
    value = var.container_insights
  }

  tags = {
    Name        = var.ecs_cluster_name
    Environment = var.environment
    Project     = var.project_name
  }
}