terraform {
  source = "git::https://github.com/Devopsraining/Azure_Terraform.git//azure-infra/modules/vm?ref=main"
}

locals {
  # Load regional variables
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl"))

  # Ensure all referenced variables are explicitly defined or passed
  subscription_id = local.region_vars.locals.subscription_id
  resource_group_name = local.region_vars.locals.resource_group_name
  venky_vnet = "venky-vnet"
  subnet_name = "venkydemosn-subnet"

  # Build dynamic subnet ID
  subnet_id = "/subscriptions/${local.subscription_id}/resourceGroups/${local.resource_group_name}/providers/Microsoft.Network/virtualNetworks/${local.venky_vnet}/subnets/${local.subnet_name}"
}

inputs = {
  # Inputs passed to the Terraform module
  resource_group_name  = local.resource_group_name
  location             = local.region_vars.locals.location
  vm_name              = "my-azure-vm"
  vm_size              = "Standard_B1s"
  venky_vnet           = local.venky_vnet
  subnet_name          = local.subnet_name
  subnet_id            = local.subnet_id
  admin_username       = "azureuser"
  admin_ssh_key        = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILN8weJUrwDPo3/r8er9tQjhFCRJYrKBkX7itZH7ifAI eddsa-key-20241210"
  storage_account_name = "mystorageacct123"
  container_name       = "mytfcontainer"
}