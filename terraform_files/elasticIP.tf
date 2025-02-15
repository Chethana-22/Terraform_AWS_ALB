resource "aws_eip" "bastion_eip" {
  depends_on = [ module.ec2_public, module.vpc ]
  tags = local.common_tags

  instance = module.ec2_public.id
  domain = "vpc"

  provisioner "local-exec" {
    command = "echo Destroy time prov `date` >> destroy-time-prov.txt"
    working_dir = "local-exec-output-files/"
    when = destroy
  }
}