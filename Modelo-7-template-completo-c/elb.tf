resource "aws_elb" "ipnotics_elb" {
  #name = "ipnotics-elb" En el caso de que queremos asignar manualmente el nombre.
   name_prefix  = "${var.project}-"
   cross_zone_load_balancing = true
   subnets = ["${aws_subnet.pub1.id}", "${aws_subnet.pub2.id}"]
  listener {
    
    instance_port = 50
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  #Devuelve una lista con las zonas de disponibilidad
  security_groups = ["${aws_security_group.ipnotics-sg.id}"]
  instances = "${aws_instance.webservers.*.id}"
}
