provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0d2614eafc1b0e4d2"
instance_type = "t2.micro"
key_name = "awskeypair"
vpc_security_group_ids = ["sg-041530ece07ff5134"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
