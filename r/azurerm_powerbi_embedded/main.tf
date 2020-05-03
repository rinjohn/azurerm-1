terraform {
  required_providers {
    azurerm = ">= 2.3.0"
  }
}

resource "azurerm_powerbi_embedded" "this" {
  administrators      = var.administrators
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tags                = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}
