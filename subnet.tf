resource "aws_subnet" "sample-subnet-public-01" {
  vpc_id = aws_vpc.sample-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "sample-subnet-public-01"
  }
}

resource "aws_subnet" "sample-subnet-public-02" {
  vpc_id = aws_vpc.sample-vpc.id
  cidr_block = "10.0.20.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "sample-subnet-public-02"
  }
}
