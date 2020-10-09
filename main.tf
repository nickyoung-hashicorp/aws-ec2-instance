# hulu-sentinel-test

provider "aws" {
  region              = var.aws_region
}

resource aws_vpc "hashicat" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    name = "hashicat-vpc"
  }
}

resource aws_subnet "hashicat" {
  vpc_id     = aws_vpc.hashicat.id
  cidr_block = "10.0.1.0/24"

  tags = {
    name = "hashicat-subnet"
  }
}

# resource aws_security_group "hashicat" {
#   name = "hashicat-security-group"

#   vpc_id = aws_vpc.hashicat.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port       = 0
#     to_port         = 0
#     protocol        = "-1"
#     cidr_blocks     = ["0.0.0.0/0"]
#     prefix_list_ids = []
#   }

#   tags = {
#     Name = "hashicatsecurity-group"
#   }
# }

# resource random_id "app-server-id" {
#   prefix      = "${var.prefix}-hashicat-"
#   byte_length = 8
# }

# resource aws_internet_gateway "hashicat" {
#   vpc_id = aws_vpc.hashicat.id

#   tags = {
#     Name = "${var.prefix}-internet-gateway"
#   }
# }

# resource aws_route_table "hashicat" {
#   vpc_id = aws_vpc.hashicat.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.hashicat.id
#   }
# }

# resource aws_route_table_association "hashicat" {
#   subnet_id      = aws_subnet.hashicat.id
#   route_table_id = aws_route_table.hashicat.id
# }

# data aws_ami "ubuntu" {
#   most_recent = true

#   filter {
#     name = "name"
#     #values = ["ubuntu/images/hvm-ssd/ubuntu-disco-19.04-amd64-server-*"]
#     values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_eip" "hashicat" {
#   instance = aws_instance.hashicat.id
#   vpc      = true
# }

# resource "aws_eip_association" "hashicat" {
#   instance_id   = aws_instance.hashicat.id
#   allocation_id = aws_eip.hashicat.id
# }

# Using module "aws_instance" instead
# resource aws_instance "hashicat" {
#   ami                         = data.aws_ami.ubuntu.id
#   instance_type               = var.instance_type
#   key_name                    = aws_key_pair.hashicat.key_name
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.hashicat.id
#   vpc_security_group_ids      = [aws_security_group.hashicat.id]

#   tags = {
#     Name = "${var.prefix}-hashicat-instance"
#   }
# }


module "aws_instance" {
  source  = "app.terraform.io/nickyoung-hashicorp/aws-instance/aws"
  version = "1.0.3"
  # insert required variables here
  security_group_ids = ["sg-a5f24bf1"]
}

# resource "aws_instance" "ubuntu" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   tags = {
#     Name  = "${var.name}-master"
#     owner = var.owner
#   }
# }
