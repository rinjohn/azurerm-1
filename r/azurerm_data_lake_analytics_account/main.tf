terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_data_lake_analytics_account" "this" {
  default_store_account_name = var.default_store_account_name
  location                   = var.location
  name                       = var.name
  resource_group_name        = var.resource_group_name
  tags                       = var.tags
  tier                       = var.tier

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

