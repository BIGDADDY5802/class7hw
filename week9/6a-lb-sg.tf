resource "aws_security_group" "allow_alb_http" {
  name        = "alb-http-sg"
  description = "Allow HTTP for web tier ALB"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_http_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "alb_ingress_80" {
  security_group_id = aws_security_group.allow_alb_http.id
  #type              = "ingress"
  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
  cidr_ipv4   = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "alb_egress" {
  security_group_id = aws_security_group.allow_alb_http.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports


}