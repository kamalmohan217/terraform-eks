resource "aws_default_route_table" "default_route_table" {
  default_route_table_id = aws_vpc.test_vpc.default_route_table_id
 
   tags = {
    Name = "default-route-table"
    Environment = var.env               ##"${terraform.workspace}"
  }

}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.test_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway.id
}

  tags = {
    Name = "Private-route-table"
   Environment = var.env                  ##"${terraform.workspace}"
  }
}

resource "aws_route_table_association" "private_route_table_association" {
  count = "${length(data.aws_availability_zones.azs.names)}"         ##"${length(slice(data.aws_availability_zones.azs.names, 0, 2))}"
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private_route_table.id
}
