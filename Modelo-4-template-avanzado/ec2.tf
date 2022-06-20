resource "aws_instance" "server2" {
  ami = "ami-0f5094faf16f004eb"
  instance_type = "t2.small"
  tags= {
    Name = "IPnotics-server"
  }
}