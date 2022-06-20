terraform {
  required_version = ">= 0.10.7"
}

provider "aws" {
  region = "eu-west-3"
  allowed_account_ids = ["657875069774"]
  profile = "ipnotics"
}
