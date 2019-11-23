#########################################
# Public Subnet
#########################################

# Public Subnet eu-west 1a
resource "aws_subnet" "eu-west-1a-public" {
    vpc_id = "${aws_vpc.vpc.id}"
    cidr_block = "${var.public_subnet_cidr}"
    availability_zone = "${var.availability_zone1a}"

    tags = {
        Name = "public-subnet"
    }
}
#Route Table eu-west-1a
resource "aws_route_table" "eu-west-1a-public" {
    vpc_id = "${aws_vpc.main.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gateway.id}"
    }

    tags = {
        Name = "Public Subnet"
        Team = "CAD"
    }
}
# Route Table Association eu-west-1a
resource "aws_route_table_association" "eu-west-1a-public" {
    subnet_id = "${aws_subnet.eu-west-1a-public.id}"
    route_table_id = "${aws_route_table.eu-west-1a-public.id}"
}

#########################################
# Private Subnet
#########################################

resource "aws_subnet" "eu-west-1a-private" {
    vpc_id = "${aws_vpc.main.id}"

    cidr_block = "${var.private_subnet_cidr}"
    availability_zone = "${var.availability_zone1a}"

    tags = {
        Name = "Private Subnet"
        Team = "CAD"
    }
}

resource "aws_route_table" "eu-west-1a-private" {
    vpc_id = "${aws_vpc.main.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_nat_gateway.cadgw.id}"
    }

    tags = {
        Name = "Private Subnet"
        Team = "CAD"
    }
}

resource "aws_route_table_association" "eu-west-1a-private" {
    subnet_id = "${aws_subnet.eu-west-1a-private.id}"
    route_table_id = "${aws_route_table.eu-west-1a-private.id}"
}

resource "aws_subnet" "eu-west-1b-private" {
    vpc_id = "${aws_vpc.main.id}"

    cidr_block = "${var.private_subnet_cidr1b}"
    availability_zone = "${var.availability_zone1b}"

    tags = {
        Name = "Private Subnet"
        Team = "CAD"
    }
}

resource "aws_route_table" "eu-west-1b-private" {
    vpc_id = "${aws_vpc.main.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_nat_gateway.cadgw.id}"
    }

    tags = {
        Name = "Private Subnet"
        Team = "CAD"
    }
}

resource "aws_route_table_association" "eu-west-1b-private" {
    subnet_id = "${aws_subnet.eu-west-1b-private.id}"
    route_table_id = "${aws_route_table.eu-west-1b-private.id}"
}
