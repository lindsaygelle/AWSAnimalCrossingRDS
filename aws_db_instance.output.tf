output "aws_db_instance_address" {
  sensitive = true
  value     = aws_db_instance.main.address
}

output "aws_db_instance_db_name" {
  sensitive = true
  value     = aws_db_instance.main.db_name
}

output "aws_db_instance_password" {
  sensitive = true
  value     = aws_db_instance.main.password
}

output "aws_db_instance_username" {
  sensitive = true
  value     = aws_db_instance.main.username
}