resource "azurerm_resource_group_template_deployment" "acre" {
  count               = var.acre_count
  name                = "${var.acre_name}${count.index}"
  resource_group_name = var.acre_resource_group
  deployment_mode     = var.acre_deployment_mode
  template_content    = templatefile(var.acre_template_path, { acre_name = var.acre_name, location = var.location } )

  depends_on = [azurerm_resource_group.platform]
}
