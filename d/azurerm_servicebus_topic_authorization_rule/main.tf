terraform {
  required_providers {
    azurerm = ">= 2.4.0"
  }
}

data "azurerm_servicebus_topic_authorization_rule" "this" {
  name                = var.name
  namespace_name      = var.namespace_name
  resource_group_name = var.resource_group_name
  topic_name          = var.topic_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

