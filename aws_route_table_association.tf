resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.public_subnet.id
  subnet_id      = aws_subnet.public_1.id
}

resource "aws_route_table_association" "private_1" {
  route_table_id = aws_route_table.private_lambda.id
  subnet_id      = aws_subnet.private_1.id
}

resource "aws_route_table_association" "private_2" {
  route_table_id = aws_route_table.private_lambda.id
  subnet_id      = aws_subnet.private_2.id
}