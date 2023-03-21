resource "aws_db_subnet_group" "main" {
  name = "animal-crossing-rds"
  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.aws_subnet_private_1_id,
    data.terraform_remote_state.vpc.outputs.aws_subnet_private_2_id
  ]
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-rds"
  }
}