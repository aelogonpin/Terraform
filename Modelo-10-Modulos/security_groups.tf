resource "aws_security_group" "ipnotics-sg" {
  name = "ipnotics-sg"
  vpc_id = "${module.vpc.vpc_id}"
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
  vpc_id = module.vpc.vpc_id
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

resource "aws_security_group" "rds-sg" {
  name = "rds-sg"
  vpc_id = module.vpc.vpc_id
  ingress {
    from_port = 3306
    protocol = "tcp"
    to_port = 3306
    security_groups = ["${aws_security_group.ami_sg.id}"]
  }
   ingress  {
    from_port   = 3306
    protocol    = "tcp"
    to_port     = 3306
    cidr_blocks = ["77.224.26.171/32"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = [ "0.0.0.0/0" ] 
  }
  
}


 

 