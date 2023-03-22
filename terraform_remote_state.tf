data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = var.account
    key    = "AnimalCrossing/VPC/terraform.tfstate"
    region = var.region
  }
}