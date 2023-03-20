resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.public.id
  subnet_id     = aws_subnet.public_1.id
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing"
  }
}