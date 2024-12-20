output "vpc_sc_id" {
  value = aws_vpc.vpc_sc.id
}

output "public_subnet_a_sc_id" {
  value = aws_subnet.public_subnet_a_sc.id
}

output "public_subnet_b_sc_id" {
  value = aws_subnet.public_subnet_b_sc.id
}

output "private_subnet_a_sc_id" {
  value = aws_subnet.private_subnet_a_sc.id
}

output "private_subnet_b_sc_id" {
  value = aws_subnet.private_subnet_b_sc.id
}

output "nat_gateway_sc_id" {
  value = aws_nat_gateway.nat_gateway_sc.id
}