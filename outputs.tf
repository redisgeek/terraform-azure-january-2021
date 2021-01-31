locals {
  redis_geek_config = {
    acre_resource_group = var.acre_resource_group
    location = var.location
  }
}

output "redis_geek_config" {
  value = jsonencode(local.redis_geek_config)
  sensitive = true
}
