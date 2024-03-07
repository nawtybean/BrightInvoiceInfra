resource "aws_lightsail_static_ip" "bright_invoice_lightsail_ip" {
  name = var.ip_address_name
}

resource "aws_lightsail_instance" "bright_invoice_instance" {
  name = var.lightsail_instance_name
  availability_zone = var.az_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  
}


resource "aws_lightsail_static_ip_attachment" "instance_ip_association" {
  static_ip_name = aws_lightsail_static_ip.bright_invoice_lightsail_ip.id
  instance_name  = aws_lightsail_instance.bright_invoice_instance.id
}

resource "aws_route53_zone" "dns_zone" {
  name = var.domain_name
}

resource "aws_route53_record" "dns_record" {
  zone_id = aws_route53_zone.dns_zone.zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = var.ttl_configuration
  records = [aws_lightsail_instance.bright_invoice_instance.public_ip_address]
}

# if the dns stuff has already been sorted, comment both the `aws_route53_zone` and `aws_route53_record` resource
# in that case, uncomment the following
# resource "aws_lightsail_domain" "bright_invoice_name" {
#  domain_name = var.domain_name
# }

