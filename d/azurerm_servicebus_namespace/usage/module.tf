module "azurerm_servicebus_namespace" {
  source = "./modules/azurerm/d/azurerm_servicebus_namespace"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
