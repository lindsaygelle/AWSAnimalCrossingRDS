data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "385739365063"
    key    = "AnimalCrossing/VPC/terraform.tfstate"
    region = "us-east-1"
  }
}