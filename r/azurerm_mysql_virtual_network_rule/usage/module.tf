module "azurerm_mysql_virtual_network_rule" {
  source = "./modules/azurerm/r/azurerm_mysql_virtual_network_rule"

  name                = null
  resource_group_name = null
  server_name         = null
  subnet_id           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
