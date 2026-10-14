terraform {
  required_version = ">= 1.5.0"
}

variable "environment" {
  type = string
}

variable "redis_auth" {
  type = string
}

# A propósito NO es sensitive, para que el plan muestre el valor que llegaría.
resource "terraform_data" "redis" {
  input = {
    environment = var.environment
    redis_auth  = var.redis_auth
  }
}
