resource "azurerm_redis_cache" "basic" {
  count               = var.acrb_count
  name                = var.acrb_name
  location            = var.location
  resource_group_name = var.acre_resource_group
  capacity            = 4
  family              = "C"
  sku_name            = "Basic"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  depends_on = [azurerm_resource_group.platform]
}
