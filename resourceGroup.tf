resource "azurerm_resource_group" "platform" {
  name = var.acre_resource_group
  location = var.location

  tags = merge( var.tags, { name = var.acre_resource_group } )
}