terraform {
  required_providers {
    azurerm = ">= 2.3.0"
  }
}

data "azurerm_client_config" "this" {

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

