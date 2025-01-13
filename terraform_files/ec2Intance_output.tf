output "ec2_public_instance_ids" {
    description = "EC2 Instance ID"
    value = module.ec2_public.id
}

output "ec2_public_ips" {
  description = "Public IP of EC2 instance"
  value = module.ec2_public.public_ip
}

output "ec2_private_instance_ids" {
  description = "Instance IDs of EC2 instance"
  value = [for private in module.module.ec2_private: private.id]
}

output "ec2_private_instance_ip" {
  description = "Private IPs of EC2 instance"
  value = [for private in module.module.ec2_private: private.ip]
}