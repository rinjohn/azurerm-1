terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_storage_container" "this" {
  container_access_type = var.container_access_type
  metadata              = var.metadata
  name                  = var.name
  storage_account_name  = var.storage_account_name

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

