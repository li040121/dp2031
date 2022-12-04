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

