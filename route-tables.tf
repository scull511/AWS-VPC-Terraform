# Public Route Table
resource "aws_route_table" "public_route_table_sc" {
  vpc_id = aws_vpc.vpc_sc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_sc.id
  }
  tags = {
    Name = "public_route_table_sc"
  }
}

# Private Route Table
resource "aws_route_table" "private_route_table_sc" {
  vpc_id = aws_vpc.vpc_sc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id         = aws_nat_gateway.nat_gateway_sc.id
  }

  tags = {
    Name = "private_route_table_sc"
  }
}

# Update Private Route Table
# resource "aws_route" "private_route_sc" {
#   route_table_id         = aws_route_table.private_route_table_sc.id
#   destination_cidr_block = "0.0.0.0/0"
#   nat_gateway_id         = aws_nat_gateway.nat_gateway_sc.id
# }

# Associate Route Tables with Public Subnets
resource "aws_route_table_association" "public_subnet_a_association" {
  subnet_id      = aws_subnet.public_subnet_a_sc.id
  route_table_id = aws_route_table.public_route_table_sc.id
}

resource "aws_route_table_association" "public_subnet_b_association" {
  subnet_id      = aws_subnet.public_subnet_b_sc.id
  route_table_id = aws_route_table.public_route_table_sc.id
}

# Associate Route Tables with Private Subnets
resource "aws_route_table_association" "private_subnet_a_association" {
  subnet_id      = aws_subnet.private_subnet_a_sc.id
  route_table_id = aws_route_table.private_route_table_sc.id
}

resource "aws_route_table_association" "private_subnet_b_association" {
  subnet_id      = aws_subnet.private_subnet_b_sc.id
  route_table_id = aws_route_table.private_route_table_sc.id
}