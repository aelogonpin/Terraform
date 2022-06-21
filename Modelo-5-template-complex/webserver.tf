resource "aws_instance" "servidor3" {
  ami = lookup(var.aws_amis, var.region)
  instance_type = var.instance_type
  count = 3
  tags = {
    Name = "servidor3"
  }
}