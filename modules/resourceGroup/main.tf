# Deployment of Resource group

resource "azurerm_resource_group" "collibra-rg" {
  name     = var.rg-name
  location = var.location
}

