locals {
  redis_geek_config = {
    acre_name = var.acre_name
    acre_resource_group = var.acre_resource_group
    location = var.location
    output_content = azurerm_resource_group_template_deployment.acre.output_content
    acre_resource_id = azurerm_resource_group_template_deployment.acre.id
  }
}

output "redis_geek_config" {
  value = jsonencode(local.redis_geek_config)
  sensitive = true
}