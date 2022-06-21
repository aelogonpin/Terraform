resource "aws_elb" "ipnotics_elb" {
  #name = "ipnotics-elb" En el caso de que queremos asignar manualmente el nombre.
   name_prefix  = "${var.project}-"
   cross_zone_load_balancing = true
   subnets = ["${module.vpc.sub_pub1}", "${module.vpc.sub_pub2}"]
  listener {
    instance_port = 50
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  #Devuelve una lista con las zonas de disponibilidad
  security_groups = ["${aws_security_group.ipnotics-sg.id}"]
   ##instances = "${aws_instance.webservers.*.id}"   no hace falta
}