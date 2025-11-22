resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name    = "main_IG"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
