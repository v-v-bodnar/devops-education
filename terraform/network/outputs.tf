output "vpc_id" {
  value = module.project3.vpc_id
}

output "subnet_public_id" {
  value = module.project3.subnet_public
}

output "subnet_private_id" {
  value = module.project3.subnet_private
}

output "security_group_id" {
  value = module.project3.security_group
}
