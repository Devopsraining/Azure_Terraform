terraform {
  //source = "./modules/${path_relative_to_include()}"
    source = "git@github.com:Devopsraining/terraform-modules.git/modules/vm?ref=main"
    }

locals {
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = {
  resource_group_name  = local.region_vars.locals.resource_group_name
  location             = local.region_vars.locals.location
  vm_name              = "my-azure-vm"
  vm_size              = "Standard_B1s"
  admin_username       = "azureuser"
  //ssh_public_key       = tls_private_key.vm_ssh_key.public_key_openssh
  storage_account_name = "mystorageacct123"
  container_name       = "mytfcontainer"
}