resource "aws_instance" "project3" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = data.terraform_remote_state.network.outputs.subnet_public_id
  vpc_security_group_ids = [data.terraform_remote_state.network.outputs.security_group_id]

  tags = {
    Name = "project3_instance"
  }

  lifecycle {
    ignore_changes = [
      ami,
    ]
  }
}
