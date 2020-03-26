# prod branch

terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
<<<<<<< HEAD
    # Name = var.name
=======
  //  Name = var.name
>>>>>>> 2b8c1785757a05255ea4c4707ccdfaa146c1524a
  }
}
