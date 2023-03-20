resource "aws_route_table" "public_subnet" {
  vpc_id = aws_vpc.this.id
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-public"
  }
}

resource "aws_route_table" "private_lambda" {
  vpc_id = aws_vpc.this.id
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-private-lambda"
  }
}