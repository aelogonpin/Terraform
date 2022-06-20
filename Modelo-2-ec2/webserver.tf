#Mostrar ids de los equipos:
data "aws_availability_zones" "az" {
  
}
 # Mostrar la versiones de ubuntu:
 data "aws_ami" "ubuntu" {
   most_recent = true
   owners = ["099720109477"]

filter {
  name = "name"
  values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" ]
}

 }

resource "aws_instance" "servidor" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.typevm
}