resource "aws_db_subnet_group" "main" {
  name = "animal-crossing"

  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.aws_subnet_private_1_id,
    data.terraform_remote_state.vpc.outputs.aws_subnet_private_2_id
  ]

  tags = {
    "application" = "animal-crossing"
    "environment" = terraform.workspace
    "region"      = var.region
    "Name"        = "animal-crossing"
  }
}