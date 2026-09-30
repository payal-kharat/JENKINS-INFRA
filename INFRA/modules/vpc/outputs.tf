output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  value = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnet_ids" {
  value = [for subnet in aws_subnet.private : subnet.id]
}

output "public_subnet_ids_by_az" {
  value = {
    for az, subnet in aws_subnet.public :
    az => subnet.id
  }
}

output "private_subnet_ids_by_az" {
  value = {
    for az, subnet in aws_subnet.private :
    az => subnet.id
  }
}

output "public_subnet_cidrs" {
  value = [
    for subnet in aws_subnet.public :
    subnet.cidr_block
  ]
}

output "private_subnet_cidrs" {
  value = [
    for subnet in aws_subnet.private :
    subnet.cidr_block
  ]
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}