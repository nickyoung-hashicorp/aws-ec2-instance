variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "ami_id" {
  description = "Amazon Linux AMI 2018.03.0 (HVM), SSD Volume Type"
  default     = "ami-08d489468314a58df"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default     = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default     = "nyoung-tfe-demo"
}

variable "owner" {
  description = "owner of provisioned resource"
  default     = "hashicorp"
}

variable "allowed_account_ids" {
  description = "allowed account ids"
  default     = ["711129375688"]
}

variable "user_account_role_arn" {
  description = "role arn"
  default     = "arn:aws:iam::711129375688:role/se_demos_dev-developer/nyoung@hashicorp.com"
}
