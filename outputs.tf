output "public_dns" {
  value = "Dev URL - ${aws_instance.ubuntu.public_dns}"
}
