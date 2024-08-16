resource "aws_security_group" "cluster_master_sg" {

    name = format("%s-master-sg", var.cluster_name)

    //contexto de vpc onde sera deployado o secutiry grupo (
    //dentro dessa rede que tera acesso ao SG)
    vpc_id = var.cluster_vpc.id

    egress {
        from_port = 0
        to_port = 0

        protocol = "-1" //tcp e udp
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
      Name = format("%s-master-sg", var.cluster_name)
    }
  
}

resource "aws_security_group_rule" "cluster_ingress_https" {

    //aqui seria legal criar uma rule para o range corporativo
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port = 443
    protocol = "tcp"

    security_group_id = aws_security_group.cluster_master_sg.id
    type = "ingress"
}
