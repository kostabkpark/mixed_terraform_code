resource "aws_route_table" "sample-rt-public" {
  vpc_id = aws_vpc.sample-vpc.id
  tags = {
    Name = "sample-rt-public"
  }
}