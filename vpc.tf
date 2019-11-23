##################################
# VPC Create
##################################

# Virtual Private Cloud - IP Range
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "parking-vpc"
  }
}

# Internet Gateway to allow access to internet
resource "aws_nat_gateway" "gateway" {
    vpc_id = "${aws_vpc.vpc}"

    tags = {
        Name = "Parking-nat-gateway"
    }
}

#VPC internet access on main route table:
resource "aws_route" "route" {
  route_table_id         = "${aws_vpc.vpc.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.gateway.id}"
}
