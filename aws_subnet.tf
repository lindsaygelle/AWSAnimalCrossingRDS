resource "aws_subnet" "public_1" {
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.this.id
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-public-1"
  }
}

resource "aws_subnet" "private_1" {
  availability_zone = "${var.region}a"
  cidr_block        = "10.0.2.0/24"
  vpc_id            = aws_vpc.this.id
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-private-1"
  }
}

resource "aws_subnet" "private_2" {
  availability_zone = "${var.region}b"
  cidr_block        = "10.0.3.0/24"
  vpc_id            = aws_vpc.this.id
  tags = {
    "region" = var.region
    "Name"   = "animal-crossing-private-2"
  }
}