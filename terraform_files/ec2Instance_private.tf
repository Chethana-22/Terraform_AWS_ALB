module "ec2_private" {
  depends_on = [ module.vpc ]
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name = "${var.environment}-vm"
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name = var.instance_keypair
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags

}