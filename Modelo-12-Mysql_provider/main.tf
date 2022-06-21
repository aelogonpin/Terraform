terraform {
required_providers {
  mysql = {
    source = "winebarrel/mysql"
    version = "1.10.6"
  }
}
}
provider "aws" {
  region = var.region
  allowed_account_ids = ["${var.aws_id}"]
  profile = "ipnotics"
}

provider "mysql" {
  endpoint = "${aws_db_instance.mydb.endpoint}"
  username = "${var.rds_username}"
  password = "${var.rds_passwd}"
   
}