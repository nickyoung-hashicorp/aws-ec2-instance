# hulu-sentinel-test

terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  version             = "~> 2.0"
  region              = var.aws_region
  allowed_account_ids = var.allowed_account_ids
  assume_role {
    role_arn = var.user_account_role_arn
  }
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name  = "${var.name}-master"
    owner = var.owner
  }
}
