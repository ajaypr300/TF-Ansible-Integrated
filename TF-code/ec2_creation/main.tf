provider "aws" {
    region = var.AWS_REGION
}

resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [var.sg]
    tags = {Name = "HTTP_SERVER"}
    key_name = "terraform.pub"
}