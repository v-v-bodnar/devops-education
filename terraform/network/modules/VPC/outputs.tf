output "vpc_id" {
  value = aws_vpc.project3.id
}

output "subnet_public" {
  value = aws_subnet.project3_public.id
}

output "subnet_private" {
  value = aws_subnet.project3_private.id
}

output "security_group" {
  value = aws_security_group.project3.id
}
