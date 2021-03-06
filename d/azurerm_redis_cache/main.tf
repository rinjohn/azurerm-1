terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_redis_cache" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  zones               = var.zones

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

