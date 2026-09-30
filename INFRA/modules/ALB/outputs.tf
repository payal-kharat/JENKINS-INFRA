output "ALB_ID" {
  value = aws_lb.main.id
}

output "ALB_ARN" {
  value = aws_lb.main.arn
}

output "ALB_DNS_NAME" {
  value = aws_lb.main.dns_name
}

output "ALB_ZONE_ID" {
  value = aws_lb.main.zone_id
}

output "FRONTEND_TARGET_GROUP_ID" {
  value = aws_lb_target_group.frontend.id
}

output "FRONTEND_TARGET_GROUP_ARN" {
  value = aws_lb_target_group.frontend.arn
}

output "FRONTEND_TARGET_GROUP_NAME" {
  value = aws_lb_target_group.frontend.name
}

output "ALB_LISTENER_ARN" {
  value = aws_lb_listener.frontend.arn
}