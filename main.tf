# prod branch

terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  count         = var.number_instances
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.name}-prod"
    owner = var.owner
  }
}
