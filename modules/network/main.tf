# Create VPC
resource "aws_vpc" "public_vpc" {
  cidr_block = var.vpc_cidr 
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  tags = {
    Name = "$(var.project_name)-VPC"
  }
}

# Create Internet Gateway and attach to VPC
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.public_vpc.id

  tags = {
    Name = "${var.project_name}-IGW"
  }
}

# Get the availability zones using data source
data "aws_availability_zones" "zones" {}

# Create Public availability zone
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.public_vpc.id
  cidr_block = var.public_subnet_cidr 
  availability_zone = data.aws_availability_zones.zones.names[2]

  tags = {
    Name = "${var.project_name}-Public Subnet"
  }
}

# Create Public routing table and route
resource "aws_route_table" "default_routes" {
  vpc_id = aws_vpc.public_vpc.id

  route {
    cidr_block = var.aws_route_cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Public Default Route Table-${var.project_name}"
  }
}

# Associate Public Subnet AZ to "Public Route Table"
resource "aws_route_table_association" "route_association" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.default_routes.id
}