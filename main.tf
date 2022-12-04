terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "ketantfstaterg"
    storage_account_name = "ketantfstatesa99"
    container_name       = "ketantfstatect"
    key                  = "simple.terraform.tfstate"
  }
}


resource "azurerm_resource_group" "example" {
  name     = "examplerg"
  location = "centralus"
}

resource "azurerm_storage_account" "examplesa" {
  name                     = "ketanexamplesa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
