module "azurerm_shared_image_gallery" {
  source = "./modules/azurerm/d/azurerm_shared_image_gallery"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
