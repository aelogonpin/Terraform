variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "region" {
  type = string
  default = "eu-west-3"
}
variable "aws_id" {
    type = string
    default = "657875069774"
  
}
variable "aws_amis" {
  type = map
  default = {
    "eu-west-3"= "ami-0f5094faf16f004eb"
    "us-east-1"= "ami-0cff7528ff583bf9a"
    "eu-central-1"= "ami-0a1ee2fb28fe05df3"
  }
}

variable "project" {
  type = string
  default = "ipnowe"
  #default = "ipnoticsweb" Dejo este en comentario ya que para el name_prefix de elb.tf necesita tener un tope de 6 caracteres
  
}
variable "enviroment" {
  type = string
  default = "pro"
}