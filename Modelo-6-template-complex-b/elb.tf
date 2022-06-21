data "aws_availability_zones" "az" {}
resource "aws_elb" "ipnotics_elb" {
  #name = "ipnotics-elb" En el caso de que queremos asignar manualmente el nombre.
   name_prefix  = "${var.project}-"
  listener {
    
    instance_port = 50
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
  availability_zones = "${data.aws_availability_zones.az.names}"
  #Devuelve una lista con las zonas de disponibilidad
}
