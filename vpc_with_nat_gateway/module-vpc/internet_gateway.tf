resource "aws_internet_gateway" "testIGW" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = var.igw_name        #"test-IGW"
    Environment = var.env               ##"${terraform.workspace}"
  }
}
