terraform {
  required_providers {
    azurerm = ">= 2.7.0"
  }
}

resource "azurerm_maintenance_configuration" "this" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  scope               = var.scope
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
