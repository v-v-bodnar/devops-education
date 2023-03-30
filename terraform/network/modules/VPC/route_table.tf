resource "aws_route_table" "project3" {
  vpc_id = aws_vpc.project3.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.project3.id
  }

  tags = {
    Name = "project3"
  }
}

resource "aws_route_table_association" "project3" {
  subnet_id      = aws_subnet.project3_public.id
  route_table_id = aws_route_table.project3.id
}

resource "aws_internet_gateway" "project3" {
  vpc_id = aws_vpc.project3.id

  tags = {
    Name = "project3"
  }
}
