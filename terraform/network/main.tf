module "project3" {
  source                    = "./modules/VPC"
  vpc_cidr_block            = "10.0.0.0/16"
  subnet_public_cidr_block  = "10.0.1.0/24"
  subnet_private_cidr_block = "10.0.10.0/24"
  ingress_ports             = [80, 22, 443]
}

