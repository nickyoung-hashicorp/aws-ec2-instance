# Prod Branch

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
#   tags = {
#     Name = "aws-ec2-instance_prod"
#     owner = "nyoung@hashicorp.com"
#   }
}
