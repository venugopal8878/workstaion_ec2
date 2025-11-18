variable "name"{
    type=string
    default ="ec2"
}

variable "instance_name"{
    default="t2.micro"
}

variable "environment"{
    type = string
    default ="dev"
}

variable "security_group_name" {
    type= string
    default = "security_group"
  
}

variable "from_port" {
    type =list(numbers)
    default = [22, 80, 443]
  
}

variable "to_port" {
    type = list(numbers)
    default = [22, 80, 443]
  
}