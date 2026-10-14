# Recurso mínimo sin providers externos ni backend remoto.
terraform {
  required_version = ">= 1.5.0"
}

variable "greeting" {
  type    = string
  default = "hola"
}

resource "terraform_data" "greeting" {
  input = var.greeting
}
