output "cluster_vpc" {
  value = aws_vpc.cluster_vpc
}

output "private_subnet1a" {
  value = aws_subnet.private_subnet1a
}

output "private_subnet1c" {
  value = aws_subnet.private_subnet1c
}

output "public_subnet1a" {
  value = aws_subnet.public_subnet_1a
}

output "public_subnet1c" {
  value = aws_subnet.public_subnet_1c
}