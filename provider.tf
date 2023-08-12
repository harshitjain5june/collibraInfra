terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.47.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "harshitjain04"
    storage_account_name = "terrastorage1"
    container_name       = "terraform-container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}
