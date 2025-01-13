variable "instance_type" {
    description = "EC2 Instance Type"
    type = string
    default = "t2.micro"
}

variable "instance_keypair" {
    description = "AWS EC2 instance key pair"
    type = string
    default = "Terraform-key"
}

variable "private_instance_count" {
  description = "EC2 private instance count"
  type = number
  default = 1
}