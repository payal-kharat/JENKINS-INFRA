
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name        = "${var.project_name}-${var.environment}-vpc"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name        = "${var.project_name}-${var.environment}-igw"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_subnet" "public" {
  for_each = {
    for index, az in var.availability_zones : az => index
  }
  vpc_id                  = aws_vpc.main.id
  availability_zone       = each.key
  cidr_block              = var.public_subnet_cidrs[each.value]
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.project_name}-${var.environment}-public-${each.key}"
    Tier        = "public"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_subnet" "private" {
  for_each = {
    for index, az in var.availability_zones : az => index
  }
  vpc_id            = aws_vpc.main.id
  availability_zone = each.key
  cidr_block        = var.private_subnet_cidrs[each.value]
  tags = {
    Name        = "${var.project_name}-${var.environment}-private-${each.key}"
    Tier        = "private"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = {
    Name        = "${var.project_name}-${var.environment}-public-rt"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_route_table_association" "public" {
  for_each = aws_subnet.public
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}
resource "aws_eip" "nat" {
  domain = "vpc"
  tags = {
    Name        = "${var.project_name}-${var.environment}-nat-eip"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[var.availability_zones[0]].id
  depends_on = [
    aws_internet_gateway.main
  ]
  tags = {
    Name        = "${var.project_name}-${var.environment}-nat"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }
  tags = {
    Name        = "${var.project_name}-${var.environment}-private-rt"
    Environment = var.environment
    Project     = var.project_name
  }
}
resource "aws_route_table_association" "private" {
  for_each = aws_subnet.private
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private.id
}