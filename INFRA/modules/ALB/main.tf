resource "aws_lb" "main" {
  name               = var.ALB_NAME
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.ALB_SECURITY_GROUP_ID]
  subnets            = var.PUBLIC_SUBNET_IDS
  tags = merge(
    var.COMMON_TAGS,
    {
      Name = var.ALB_NAME
    }
  )

}

resource "aws_lb_target_group" "frontend" {

  name        = var.FRONTEND_TARGET_GROUP_NAME
  port        = var.FRONTEND_CONTAINER_PORT
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.VPC_ID

  health_check {

    enabled             = true
    path                = var.HEALTH_CHECK_PATH
    protocol            = "HTTP"
    port                = var.HEALTH_CHECK_PORT
    healthy_threshold   = 2
    unhealthy_threshold = 3
    timeout             = 5
    interval            = 30
    matcher             = "200"

  }

  tags = merge(
    var.COMMON_TAGS,
    {
      Name = var.FRONTEND_TARGET_GROUP_NAME
    }
  )

}

resource "aws_lb_listener" "frontend" {

  load_balancer_arn = aws_lb.main.arn
  port              = var.ALB_LISTENER_PORT
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend.arn

  }
  tags = merge(
    var.COMMON_TAGS,
    {
      Name = "${var.ALB_NAME}-listener"
    }
  )

}