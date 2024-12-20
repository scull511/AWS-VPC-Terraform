# Public Security Group
resource "aws_security_group" "public_sg_sc" {
  vpc_id = aws_vpc.vpc_sc.id
  tags = {
    Name = "public_sg_sc"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Private Security Group
resource "aws_security_group" "private_sg_sc" {
  vpc_id = aws_vpc.vpc_sc.id
  tags = {
    Name = "private_sg_sc"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = []
  }
}