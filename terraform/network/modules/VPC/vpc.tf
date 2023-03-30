resource "aws_vpc" "project3" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "project3"
  }
}
