# NAT Gateway requires an Elastic IP
resource "aws_eip" "nat_eip_sc" {
  domain   = "vpc"
}

resource "aws_nat_gateway" "nat_gateway_sc" {
  allocation_id = aws_eip.nat_eip_sc.id
  subnet_id     = aws_subnet.public_subnet_a_sc.id
  tags = {
    Name = "nat_gateway_sc"
  }
}