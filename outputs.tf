output "vpc" {
  value = "${aws_vpc.vpc.id}"
}

output "igw" {
  value = "${aws_internet_gateway.igw.id}"
}

output "public-subnet" {
  value = "${aws_subnet.public_subnet.*.id}"
}

output "private-subnet" {
  value = "${aws_subnet.private_subnet.*.id}"
}

output "nat" {
  value = "${format("%s-%s", aws_nat_gateway.ngw.*.id, aws_nat_gateway.ngw.*.subnet_id)}"
}

output "public-route-table" {
  value = "${aws_route_table.public_rt.*.id}"
}

output "private-route-table" {
  value = "${aws_route_table.private_rt.*.id}"
}
