resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_db_instance" "main" {
  allocated_storage            = 10
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  copy_tags_to_snapshot        = false
  db_name                      = "animalcrossing"
  db_subnet_group_name         = aws_db_subnet_group.main.name
  delete_automated_backups     = true
  engine                       = "mysql"
  engine_version               = "5.7"
  identifier                   = "animal-crossing"
  instance_class               = "db.t3.micro"
  monitoring_interval          = 0
  parameter_group_name         = "default.mysql5.7"
  password                     = random_password.password.result
  performance_insights_enabled = false
  publicly_accessible          = false
  skip_final_snapshot          = true
  username                     = "example"
  vpc_security_group_ids       = [data.terraform_remote_state.vpc.outputs.aws_security_group_rds_id]

  tags = {
    "application" = "animal-crossing"
    "environment" = terraform.workspace
    "region"      = var.region
    "Name"        = "animal-crossing"
  }
}