resource "aws_instance" "sample-ec2-01" {
  ami = "ami-040c33c6a51fd5d96"
  instance_type = "t2.micro"
  key_name      = "kosta-edu"
  associate_public_ip_address = true # 퍼블릭 IP 자동 할당
  subnet_id = aws_subnet.sample-subnet-public-01.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker ubuntu
              EOF
  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "sample-ec2-01"
    }
  }
  tags = {
    Name = "sample-ec2-01"
  }
}

resource "aws_instance" "sample-ec2-02" {
  ami = "ami-040c33c6a51fd5d96"
  instance_type = "t2.small"
  key_name      = "kosta-edu"
  associate_public_ip_address = true # 퍼블릭 IP 자동 할당
  subnet_id = aws_subnet.sample-subnet-public-02.id
  vpc_security_group_ids = [aws_security_group.sample-sg-elb.id]
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y docker.io
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker ubuntu
              EOF
  root_block_device {
    volume_size = "30"
    volume_type = "gp3"
    tags = {
      "Name" = "sample-ec2-02"
    }
  }
  tags = {
    Name = "sample-ec2-02"
  }
}
