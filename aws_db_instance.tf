/*
resource "aws_db_instance" "main" {
  allocated_storage            = 10
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  copy_tags_to_snapshot        = false
  db_name                      = "postgres"
  db_subnet_group_name         = aws_db_subnet_group.main.name
  delete_automated_backups     = true
  engine                       = "postgres"
  engine_version               = "15.2"
  identifier                   = "animal-crossing"
  instance_class               = "db.t3.micro"
  license_model                = "postgresql-license"
  monitoring_interval          = 0
  password                     = "postgres"
  performance_insights_enabled = false
  port                         = 5432
  publicly_accessible          = false
  skip_final_snapshot          = true
  username                     = "postgres"
  vpc_security_group_ids       = [aws_security_group.rds.id]

  tags = {
    "region" = var.region
  }
}
*/