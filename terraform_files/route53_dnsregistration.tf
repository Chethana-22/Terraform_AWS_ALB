data "aws_route53_zone" "mydomain" {
  name = "customdomain.com"
}

output "mydomain_zoneid" {
  description = "Route 53 zone id"
  value = data.aws_route53_zone.mydomain.zone_id
}

output "mydomain_zonename" {
  description = "Route 53 Zone name"
  value = data.aws_route53_zone.mydomain.name
}