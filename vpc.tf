provider "aws" {
  access_key = "AKIAWEYO5MLTJUSMHOQS"
  secret_key = "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"
  region     = "us-east-1"
}



resource "aws_vpc" "terraform-vpc" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "terraform-vpc"
  }
}
