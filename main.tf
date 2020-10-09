# hulu-sentinel-test

provider "aws" {
  region              = var.aws_region
}

module "aws-instance" {
  source  = "app.terraform.io/nickyoung-hashicorp/aws-instance/aws"
  version = "1.0.0"
  # insert required variables here
}

# resource "aws_instance" "ubuntu" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   tags = {
#     Name  = "${var.name}-master"
#     owner = var.owner
#   }
# }
