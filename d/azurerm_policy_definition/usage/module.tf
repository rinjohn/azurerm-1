module "azurerm_policy_definition" {
  source = "./modules/azurerm/d/azurerm_policy_definition"

  display_name          = null
  management_group_id   = null
  management_group_name = null
  name                  = null

  timeouts = [{
    read = null
  }]
}
