# Public Subnets
resource "aws_subnet" "public_subnet_a_sc" {
  vpc_id                  = aws_vpc.vpc_sc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-2a"
  map_public_ip_on_launch = true # def: false
  tags = {
    Name = "public_subnet_a_sc"
  }
}

resource "aws_subnet" "public_subnet_b_sc" {
  vpc_id                  = aws_vpc.vpc_sc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "eu-west-2b"
  map_public_ip_on_launch = true # def: false
  tags = {
    Name = "public_subnet_b_sc"
  }
}

# Private Subnets
resource "aws_subnet" "private_subnet_a_sc" {
  vpc_id                  = aws_vpc.vpc_sc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "private_subnet_a_sc"
  }
}

resource "aws_subnet" "private_subnet_b_sc" {
  vpc_id                  = aws_vpc.vpc_sc.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "private_subnet_b_sc"
  }
}