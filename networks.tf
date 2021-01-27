resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  depends_on          = [azurerm_resource_group.platform]
  resource_group_name = azurerm_resource_group.platform.name
  address_space       = ["10.0.0.0/24"]
  location            = var.location

  tags = merge(
  var.tags,
  { name = var.vnet_name },
  )
}