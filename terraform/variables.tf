variable "resource_group_name" {
  default = "Devops-Projects"
}

variable "location" {
  default = "East US"
}

variable "vm_size" {
  default = "Standard_B1ms"
}

variable "admin_username" {
  default = "adminuser"
}

variable "admin_password" {
  default = "P@ssword1234!"
}

variable "dns_prefix" {
  default = "testnode"
}
