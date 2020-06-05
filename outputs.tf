output "public_dns" {
  value = "Prod URL - ${aws_instance.ubuntu.public_dns}"
}
