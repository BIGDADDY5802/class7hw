resource "aws_launch_template" "main_LT" {
  name_prefix = "main_lt"
  image_id    = "ami-0cae6d6fe6048ca2c"
  instance_type = "t3.micro"
  key_name = "linux_box_key"


network_interfaces {
    #device_index         = 0
    subnet_id            = aws_subnet.public-us-east-1a.id
    security_groups      = [aws_security_group.allow_alb_http.id]
    associate_public_ip_address = true
  }

user_data = filebase64("user_data-d.sh") # Preferred for aws_launch_template


lifecycle {
    create_before_destroy = true
  }


}



