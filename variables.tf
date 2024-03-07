
variable "lightsail_instance_name" {
  description = "light sail instance name"
}
variable "ip_address_name" {
   description = "light sail static IPv4 address name"
}
variable "az_zone" {
  description = "light sail instance availability zone"
}
variable "blueprint_id" {
  description = "light sail bluprint id to be used on creation"
}
variable "bundle_id" {
  description = "bundle id of the light sail"
}
variable "domain_name" {
  description = "domain name of the site"
  type = string
  default = "brightinvoice.co.za"
}
variable "ttl_configuration" {
  description = "TTL (seconds) configuration for the light sail instance"
  type = number
  default = 300
}
variable "aws_deploy_region" {
  description = "AWS region to host this application"
  type =  string
}
