resource "azurerm_storage_account" "demo" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.platform.name
  location                 = azurerm_resource_group.platform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}