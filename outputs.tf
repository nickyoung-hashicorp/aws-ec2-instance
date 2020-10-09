output "public_dns" {
  value = "Default URL - ${module.aws_instance.hashicat.public_dns}"
}
