output "public_dns" { 
  value = "Default URL - ${aws_instance.ubuntu.public_dns}"
}
