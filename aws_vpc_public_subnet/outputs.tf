output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "public_igw_id" {
  value = aws_internet_gateway.igw.id
}