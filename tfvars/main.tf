provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "vpc" {
  source          = "../"
  cidr_block      = "${var.cidr_block}"
  public_subnets  = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"
}
