terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

resource "azurerm_cognitive_account" "this" {
  kind                 = var.kind
  location             = var.location
  name                 = var.name
  qna_runtime_endpoint = var.qna_runtime_endpoint
  resource_group_name  = var.resource_group_name
  sku_name             = var.sku_name
  tags                 = var.tags

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

