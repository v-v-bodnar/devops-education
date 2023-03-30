resource "aws_subnet" "project3_public" {
  vpc_id                  = aws_vpc.project3.id
  cidr_block              = var.subnet_public_cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "project3"
  }
}

resource "aws_subnet" "project3_private" {
  vpc_id     = aws_vpc.project3.id
  cidr_block = var.subnet_private_cidr_block

  tags = {
    Name = "project3"
  }
}
