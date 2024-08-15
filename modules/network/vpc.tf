resource "aws_vpc" "cluster_vpc" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true //PORQUE?
  enable_dns_support = true   //PORQUE?

  tags = {
    Name = format("%s-vpc", var.cluster_name)
  }

}