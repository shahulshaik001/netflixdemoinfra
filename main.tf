provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0614680123427b75e"
instance_type = "t2.medium"
key_name = "awskeypair"
vpc_security_group_ids = ["sg-05881aa507b7d9a52"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
