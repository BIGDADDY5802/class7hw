resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_http_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_80" {
  security_group_id = aws_security_group.allow_alb_http.id
  #type              = "ingress"
  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
  referenced_security_group_id = aws_security_group.allow_alb_http.id
}

# resource "aws_vpc_security_group_egress_rule" "egress" {
#   security_group_id = aws_security_group.allow_alb_http.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_ssh_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_22" {
  security_group_id = aws_security_group.allow_ssh.id

  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
  cidr_ipv4   = "0.0.0.0/0"

}

resource "aws_vpc_security_group_egress_rule" "egress_ssh" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_security_group" "ping" {
  name        = "ping"
  description = "Allow ping"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_ping"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_icmp" {
  security_group_id = aws_security_group.ping.id

  from_port   = -1
  to_port     = -1
  ip_protocol = "icmp"
  cidr_ipv4   = "0.0.0.0/0"

}

resource "aws_vpc_security_group_egress_rule" "egress_icmp" {
  security_group_id = aws_security_group.ping.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}