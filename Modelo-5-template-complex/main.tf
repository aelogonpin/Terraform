terraform {
  required_version = ">= 0.10.7"
}

provider "aws" {
  region = "eu-west-3"
  allowed_account_ids = ["657875069774"]
# allowed_account_ids = ["${var.aws_id}"] Este lo utilizamos en el caso de que tengamos una variable creada en el apartado de variables
  profile = "ipnotics"
}
