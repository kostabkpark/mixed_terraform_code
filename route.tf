resource "aws_route" "sample-public-route" {
  route_table_id = aws_route_table.sample-rt-public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.sample-igw.id
}
