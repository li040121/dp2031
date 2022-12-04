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
