resource "aws_security_group" "lambda" {
  name   = "animal-crossing-lambda"
  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_id

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Lambda"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-lambda"
  }
}

resource "aws_security_group" "rds" {
  name   = "animal-crossing-rds"
  vpc_id = data.terraform_remote_state.vpc.outputs.aws_vpc_id

  ingress {
    description     = "PostgreSQL"
    from_port       = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.lambda.id]
    to_port         = 5432
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-rds"
  }
}