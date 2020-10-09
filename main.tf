# hulu-sentinel-test

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

# module "hulu-test" {
#   source  = "app.terraform.io/nickyoung-hashicorp/hulu-test/aws"
#   version = "1.0.0"
# }
