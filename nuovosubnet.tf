provider "aws" {
	region = "${var.region}"
	profile = "${var.profile}"
}
#creating vpc with name nuovovpc
resource "aws_vpc" "nuovovpc" {
	cidr_block = "10.0.0.0/16"
	enable_dns_support = true
	enable_dns_hostnames = true
	tags = {
   		 Name = "NuovoVPC"
  	}
} 
resource "aws_internet_gateway" "nuovo-gateway" {
	vpc_id = "${aws_vpc.nuovovpc.id}"
	tags {
        	Name = "Nuovo-Internet-Gateway"
    	}
}

#Internet Gateway for nuovo submet
resource "aws_route" "nuovo-internet-access" {
	route_table_id		= "${aws_vpc.nuovovpc.main_route_table_id}"
	destination_cidr_block  = "0.0.0.0/0"
	gateway_id		= "${aws_internet_gateway.nuovo-gateway.id}"
}

# Creating three public subnet

resource "aws_subnet" "Public-Nuovo-Subnet1" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.1.0/24"
        map_public_ip_on_launch = true
        availability_zone       = "us-east-1a"

        tags {
                Name = "Public-Subnet1-Nuovo"
        }
}


resource "aws_subnet" "public-nuovo-subnet2" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.2.0/24"
        map_public_ip_on_launch = true
        availability_zone       = "us-east-1b"

        tags {
                Name = "Public-Subnet2-Nuovo"
        }
}

resource "aws_subnet" "public-nuovo-subnet3" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.3.0/24"
        map_public_ip_on_launch = true
        availability_zone       = "us-east-1c"

        tags {
                Name = "Public-Subnet3-Nuovo"
        }
}

# Creating 3 private subnet
resource "aws_subnet" "private-nuovo-subnet1" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.11.0/24"
        availability_zone       = "us-east-1a"
        tags {
                Name = "Private-Subnet1-nuovo"
        }
}

resource "aws_subnet" "private-nuovo-subnet2" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.12.0/24"
        availability_zone       = "us-east-1b"
        tags {
                Name = "Private-Subnet2-nuovo"
        }
}

resource "aws_subnet" "private-nuovo-subnet3" {
        vpc_id                  = "${aws_vpc.nuovovpc.id}"
        cidr_block              = "10.0.13.0/24"
        availability_zone       = "us-east-1c"
        tags {
                Name = "Private-Subnet3-nuovo"
        }
}

