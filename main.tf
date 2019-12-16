terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  user_data     = <<EOF
      #!/bin/bash
      yum install httpd -y
      echo "<h1> Deployed by Terraform Cloud / Workspaces / multicloud </h1>" > /var/www/index.html
      service httpd start
      chkconfig httpd on
      EOF
  tags = {
    Name = var.name
  }
}
