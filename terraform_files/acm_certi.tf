module "acm" {
  source = "terraform-aws-modules/acm/aws"
  version = "5.0.0"
  domain_name = trimsuffix(data.aws_route53_zone.mydomain.name,".")
  zone_id = data.aws_route53_zone.mydomain.zone_id

  subject_alternative_names = [
   "*.customdomain.com"
  ]

  validation_method = "DNS"
  wait_for_validation = true
  tags = local.common_tags

}

output "aim_certificate_arn" {
  description = "Certificate ARN"
  value = module.acm.acm_certificate_arn
}