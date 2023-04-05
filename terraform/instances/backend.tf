terraform {
  backend "s3" {
    bucket = "viktoria-bodnar-project3"
    key    = "terraform/instances/terraform.tfstate"
    region = "eu-central-1"
  }
}
