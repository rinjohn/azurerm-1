module "azurerm_private_dns_srv_record" {
  source = "./modules/azurerm/r/azurerm_private_dns_srv_record"

  name                = null
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  record = [{
    port     = null
    priority = null
    target   = null
    weight   = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
