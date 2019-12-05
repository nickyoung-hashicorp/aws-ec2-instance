variable "aws_region" {
  description = "AWS region"
  default = "us-west-1"
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
  default = "nyoung-TFC-demo"
}
