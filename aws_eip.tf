
resource "aws_eip" "public" {
  tags = {
    "Name" = "animal-crossing"
  }
}
