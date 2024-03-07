output "light_instance_public_ip" {
  value = aws_lightsail_instance.bright_invoice_instance.public_ip_address
  sensitive = false # change this to true, just for testing purposes now
}


output "instance_username"{
  sensitive = false # change this to true, just for testing purposes now
  value = aws_lightsail_instance.bright_invoice_instance.username
}
