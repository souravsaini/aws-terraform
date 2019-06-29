variable "cidr_block" {
  description = "CIDR block of the VPC"
  default     = ""
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  default     = true
}

variable "public_subnets" {
  description = "List of public subnets"
  type        = list
  default     = []
}

variable "private_subnets" {
  description = "List of private subnets"
  type        = list
  default     = []
}

variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

