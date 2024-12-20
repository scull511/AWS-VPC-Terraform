# Internet Gateway
resource "aws_internet_gateway" "igw_sc" {
  vpc_id = aws_vpc.vpc_sc.id
  tags = {
    Name = "igw_sc"
  }
}