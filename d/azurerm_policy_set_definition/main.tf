terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_policy_set_definition" "this" {
  display_name          = var.display_name
  management_group_name = var.management_group_name
  name                  = var.name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

