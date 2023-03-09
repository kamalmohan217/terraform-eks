resource "aws_vpc" "test_vpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
  enable_dns_hostnames = true
  
  tags = {
    Name = var.vpc_name                     ##"test-vpc"
    Environment = "Dev"            ##"${terraform.workspace}"
  }
}
