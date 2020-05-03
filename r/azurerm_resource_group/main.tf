terraform {
  required_providers {
    azurerm = ">= 2.3.0"
  }
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = var.name
  tags     = var.tags

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

