output "server-ip" {
  description = "Asignar dirección ip a la maquina"
  value = aws_instance.servidor.public_ip
}
output "az" {
    value = data.aws_availability_zones.az.names
}