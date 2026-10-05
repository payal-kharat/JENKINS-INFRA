data "aws_iam_policy_document" "ecs_task_assume_role" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
    actions = [
      "sts:AssumeRole"
    ]
  }
}
resource "aws_iam_role" "ecs_execution" {
  name               = var.ecs_execution_role_name
  assume_role_policy = data.aws_iam_policy_document.ecs_task_assume_role.json
}
resource "aws_iam_role_policy_attachment" "ecs_execution" {
  role       = aws_iam_role.ecs_execution.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
resource "aws_iam_role" "ecs_task" {
  name               = var.ecs_task_role_name
  assume_role_policy = data.aws_iam_policy_document.ecs_task_assume_role.json
}
resource "aws_iam_role_policy" "ecs_exec" {
  #name = "${var.APP_NAME}-${var.ENV}-ecs-exec-policy"
  role = aws_iam_role.ecs_task_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ssmmessages:CreateControlChannel",
          "ssmmessages:CreateDataChannel",
          "ssmmessages:OpenControlChannel",
          "ssmmessages:OpenDataChannel"
        ]
        Resource = "*"
      }
    ]
  })
}