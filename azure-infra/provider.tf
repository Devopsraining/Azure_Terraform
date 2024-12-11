provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
//  subscription_id = "eb2d5feb-eda9-434b-aa4a-5dc00952aafa"
//  client_id       = "6a4a396e-735c-4510-8064-f91d9c5b6915"
//  client_secret   = ".pA8Q~1axZtPl8xB1mJvjdtUFtOZQVVBJA-slcgR"
//  tenant_id       = "b834bb77-834b-427e-b30c-5ff48a2731ab"
  }

variable "subscription_id" {}
