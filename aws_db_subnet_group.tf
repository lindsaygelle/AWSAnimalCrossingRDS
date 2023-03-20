resource "aws_db_subnet_group" "this" {
  name = "animal-crossing-rds"
  subnet_ids = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-rds"
  }
}