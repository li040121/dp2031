terraform {
  backend "azurerm" {
    resource_group_name  = "data-engineering-synapse-wl09x63"
    storage_account_name = "asastorewl09x63"
    container_name       = "staging"
    key                  = "example.terraform.tfstate"
  }
}


resource "azurerm_resource_group" "example" {
  name     = "examplerg"
  location = "centralus"
}

resource "azurerm_resource_group" "example" {
  name     = "examplerg1"
  location = "centralus"
}

module "RG" {
  source   = "./modules/RG"
  rgname   = var.rgname
  location = var.location
}
module "SA" {
  source   = "./modules/SA"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
