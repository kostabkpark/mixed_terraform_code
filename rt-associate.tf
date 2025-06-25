resource "aws_route_table_association" "sample-rt-public-associate-a" {
  subnet_id = aws_subnet.sample-subnet-public-01.id
  route_table_id = aws_route_table.sample-rt-public.id
}

resource "aws_route_table_association" "sample-rt-public-associate-b" {
  subnet_id = aws_subnet.sample-subnet-public-02.id
  route_table_id = aws_route_table.sample-rt-public.id
}

