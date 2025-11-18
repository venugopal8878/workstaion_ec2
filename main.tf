resource "aws_instance" "ec2" {
       ami = data.ami_id
       instance_type=var.instance_name
       vpc_security_group_ids =[aws.security_group.venu.id]

       tags = {

         Name = var.name
       }

}

resource "aws_security_group" "venu"{
    name= var.security_group_name
    description= "aloow all"

    egress {

     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]

    }

    ingress {
        from_port= var.from_port
        to_port = var.to_port
        protocol= "tcp"
        cidr_blocks =["0.0.0.0/0"]
        ipv6_cidr_blocks =["::/0"]
    }

    tags ={
        Name = var.name
    }
}
