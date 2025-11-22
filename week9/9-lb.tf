resource "aws_lb" "main_alb" {
  name               = "main-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_alb_http.id]
  subnets = [
    aws_subnet.public-us-east-1a.id,
    aws_subnet.public-us-east-1b.id,
    aws_subnet.public-us-east-1c.id
  ]
  enable_deletion_protection = false
  
  #Lots of death and suffering here, make sure it's false

  tags = {
    Name    = "mainLoadBalancer"
    Service = "Multiapp"
    Owner   = "Mami Chula"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
     target_group_arn = aws_lb_target_group.main_tg.arn
  
    
  }
}


output "lb_dns_name" {
  value       = "http://${aws_lb.main_alb.dns_name}"
  description = "The DNS name of the main Load Balancer"
}

