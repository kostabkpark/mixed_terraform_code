resource "aws_security_group" "sample-sg-elb" {
  name = "sample-sg-elb"
  description = "for load balancer"
  vpc_id = aws_vpc.sample-vpc.id
  tags = {
    Name = "sample-sg-elb"
  }
}

resource "aws_security_group_rule" "sample-sg-elb-inbound" {
  security_group_id = aws_security_group.sample-sg-elb.id

  type = "ingress"
  description = "allow all for http"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-inbound2" {
  security_group_id = aws_security_group.sample-sg-elb.id

  type = "ingress"
  description = "allow all for ssh"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-inbound3" {
  security_group_id = aws_security_group.sample-sg-elb.id

  type = "ingress"
  description = "allow all for https"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-inbound4" {
  security_group_id = aws_security_group.sample-sg-elb.id

  type = "ingress"
  description = "allow all for backend"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "sample-sg-elb-outbound" {
  security_group_id = aws_security_group.sample-sg-elb.id
  type = "egress"
  description = "allow all outbound"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}