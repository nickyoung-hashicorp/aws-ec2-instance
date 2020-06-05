output "public_dns" {
  value = "Dev URL - http://${aws_instance.ubuntu.public_dns}"
}
