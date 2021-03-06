resource "aws_db_subnet_group" "subn-groups" {
  subnet_ids = [ "${aws_subnet.pri1.id}", "${aws_subnet.pri2.id}" ]
}

resource "aws_db_instance" "mydb" {
  instance_class = "db.t2.micro"
  identifier = "mydb" #Nombre de base de datos
  username = var.rsd_username
  password = var.rds_passwd
  engine = "mysql"
  allocated_storage = 10
  storage_type = "gp2"
  multi_az = false #Uso multiple de base de datos en el caso de que una aciga la otra se reemplaza por la principal "Vamos como si fuera un backup"
  db_subnet_group_name = aws_db_subnet_group.subn-groups.name
  vpc_security_group_ids = ["${aws_security_group.rds-sg.id}"]
  publicly_accessible = true
  skip_final_snapshot = true
  
}