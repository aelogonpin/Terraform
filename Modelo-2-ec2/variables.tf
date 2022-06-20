variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "amios" {
  description = "Muestra el valor numero del id de OS cque vayamos a utilizar en este caso"
  type        = string
  default     = "ami-0f5094faf16f004eb"
  
}
variable "typevm" {
  description = "Muestra el typo de vm de plantilla que vayamos a utilizar"
  type        = string
  default     = "t2.micro"
  
}