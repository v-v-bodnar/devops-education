variable "vpc_cidr_block" {
  type = string
}

variable "subnet_public_cidr_block" {
  type = string
}

variable "subnet_private_cidr_block" {
  type = string
}

variable "ingress_ports" {
  type = list(any)
}
