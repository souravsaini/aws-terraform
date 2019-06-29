resource "aws_eip" "nat" {
  count = "${length(var.private_subnets)}"
  vpc   = true
}

resource "aws_nat_gateway" "ngw" {
  count         = "${length(var.private_subnets)}"
  allocation_id = "${aws_eip.nat.*.id[count.index]}"
  subnet_id     = "${aws_subnet.public_subnet.*.id[count.index]}"
}
