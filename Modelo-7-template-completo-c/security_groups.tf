resource "aws_security_group" "ipnotics-sg" {
  name = "ipnotics-sg"
  vpc_id = aws_vpc.vpc.id
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
     cidr_blocks = [ "0.0.0.0/0" ]
  } 
  egress  {
    from_port = 0
    protocol = "-1"
    to_port = 0
     cidr_blocks = [ "0.0.0.0/0" ]
  } 
}
resource "aws_security_group" "ami_sg" {
  name = "ami_sg"
  vpc_id = aws_vpc.vpc.id
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    security_groups = [ "${aws_security_group.ipnotics-sg.id}" ]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = [ "0.0.0.0/0" ] 
  }
  
}