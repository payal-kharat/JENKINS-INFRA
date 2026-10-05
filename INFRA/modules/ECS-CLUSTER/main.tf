resource "aws_ecs_cluster" "main" {
  name = var.ecs_cluster_name
  setting {
    name  = "containerInsights"
    value = var.container_insights
  }
  tags = merge(
    var.COMMON_TAGS,
    {
      Name = var.ecs_cluster_name
    }
  )
}