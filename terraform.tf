provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "385739365063"
    key    = "AnimalCrossing/RDS/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57.1"
    }
  }
}