variable "resource_group_name" {}
variable "location" {}
variable "vm_name" {}
variable "vm_size" { default = "Standard_B1s" }
variable "subnet_id" {}
variable "admin_username" { default = "azureuser" }
variable "ssh_public_key" {}
