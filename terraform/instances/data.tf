data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "viktoria-bodnar-project3"
    key    = "terraform/network/terraform.tfstate"
    region = "eu-central-1"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}
