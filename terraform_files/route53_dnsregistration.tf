resource "aws_route53_record" "apps_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id
  name = "apps.customdomain.com"
  type = "A"
  alias {
    name = module.elb.dns_name
    zone_id = module.elb.zone_id
    evaluate_target_health = true
  }
}