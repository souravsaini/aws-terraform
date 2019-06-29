resource "aws_subnet" "public_subnet" {
  count                   = "${length(var.public_subnets)}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.public_subnets[count.index]}"
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
}

resource "aws_subnet" "private_subnet" {
  count             = "${length(var.private_subnets)}"
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${var.private_subnets[count.index]}"
  availability_zone = "${element(data.aws_availability_zones.available.names, count.index)}"
}

data "aws_availability_zones" "available" {
  state = "available"
}
