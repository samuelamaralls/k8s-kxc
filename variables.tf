variable "cluster_name" {
  default = "k8s-kxc"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "k8s-version" {
  default = "1.29"
}

variable "nodes_instances_sizes" {
  default = [
    "t3.large"
  ]
}

variable "auto_scale_options" {
  default = {
    min     = 2
    max     = 10
    desired = 2
  }
}