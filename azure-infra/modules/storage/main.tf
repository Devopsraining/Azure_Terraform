resource "azurerm_resource_group" "tf-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "tf-sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tf-rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob_container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.tf-sa.id
  container_access_type = "private"
}
