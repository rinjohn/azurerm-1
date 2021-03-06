terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "this" {
  additional_properties    = var.additional_properties
  annotations              = var.annotations
  data_factory_name        = var.data_factory_name
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  name                     = var.name
  parameters               = var.parameters
  resource_group_name      = var.resource_group_name
  service_principal_id     = var.service_principal_id
  service_principal_key    = var.service_principal_key
  tenant                   = var.tenant
  url                      = var.url

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

