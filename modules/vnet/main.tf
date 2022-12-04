locals {
  tags = merge(tomap({
    Environment = var.environment,
    Namespace = var.namespace }),
    var.global_tags,
  )
}

resource "azurerm_virtual_network" "eip_vnet" {
  name                = "${var.namespace}-${var.environment}-vnet"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = local.tags
}
