# EC2 Instance
resource "aws_instance" "instance_a_sc" {
  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_a_sc.id
  vpc_security_group_ids = [aws_security_group.public_sg_sc.id]

  tags = {
    Name = "Test Instance A - SC"
  }

  depends_on = [aws_internet_gateway.igw_sc]
}

resource "aws_instance" "instance_b_sc" {
  ami           = "ami-019374baf467d6601"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_b_sc.id
  vpc_security_group_ids = [aws_security_group.public_sg_sc.id]

  tags = {
    Name = "Test Instance B - SC"
  }

  depends_on = [aws_internet_gateway.igw_sc]
}
