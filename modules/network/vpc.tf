resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc-cidr-block}"
  enable_dns_hostnames = true
}

module "public_subnet" {
  source = "../subnet"

  vpc-id = "${aws_vpc.vpc.id}"
  cidr-blocks = "${var.public-cidr-blocks}"
  subnet-name = "public"
}

module "private_subnet" {
  source = "../subnet"

  vpc-id = "${aws_vpc.vpc.id}"
  cidr-blocks = "${var.private-cidr-blocks}"
  subnet-name = "private"
}
