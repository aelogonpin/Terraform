terraform {
  required_version = ">= 0.10.7"
}

provider "aws" {
  region = "eu-west-3"
  allowed_account_ids = ["657875069774"]
  profile = "ipnotics"
}
resource "aws_vpc" "vpc" {
  cidr_block = "10.8.0.0/16"
  enable_dns_hostnames = false
  tags = {
    Name = "ipnotics"
  }
    
}