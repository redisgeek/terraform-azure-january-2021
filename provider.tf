provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  environment     = var.cloud_name
  features {}
}

terraform {
  required_version = ">= 0.14.1"
}