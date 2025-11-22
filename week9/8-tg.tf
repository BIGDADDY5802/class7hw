resource "aws_lb_target_group" "main_tg" {
  name        = "main-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.main.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "mainTargetGroup"
    Service = "main"
    Owner   = "shadw"
    Project = "main"
  }
}

# resource "aws_lb_target_group" "main2_tg" {
#   name        = "main2-target-group"
#   port        = 80
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.main.id
#   target_type = "instance"

#   health_check {
#     enabled             = true
#     interval            = 30
#     path                = "/"
#     protocol            = "HTTP"
#     healthy_threshold   = 5
#     unhealthy_threshold = 2
#     timeout             = 5
#     matcher             = "200"
#   }

#   tags = {
#     Name    = "main2TargetGroup"
#     Service = "main"
#     Owner   = "shadw"
#     Project = "main"
#   }
# }

