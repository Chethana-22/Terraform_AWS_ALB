variable "aws_region" {
    description = "AWS resources region"
    type = string
    default = "us-east-1"
}

variable "environment" {
  description = "Environmental variable used as prefix"
  type = string
  default = "dev"
}

variable "business_division" {
  description = "Business division in organization"
  type = string
  default = "DevOps"
}