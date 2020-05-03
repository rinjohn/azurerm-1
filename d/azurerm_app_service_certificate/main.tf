terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

data "azurerm_app_service_certificate" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

