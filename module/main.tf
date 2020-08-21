terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.name}-master"
    owner = var.owner
  }
}

variable "aws_region" {
  description = "AWS region"
  default = "us-west-2"
}

variable "ami_id" {
  description = "Amazon Linux AMI 2018.03.0 (HVM), SSD Volume Type"
  default = "ami-08d489468314a58df"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "nyoung-tfe-demo"
}

variable "owner" {
  description = "owner of provisioned resource"
  default = "hashicorp"
}

  
output "public_dns" {
  value = "For Hulu testing - ${aws_instance.ubuntu.public_dns}"
}
