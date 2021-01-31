variable "acrb_name" {
  description = "The name of the deployment"
  type = string
}

variable "acrb_count" {
  description = "Number of instances to stand up"
  type = number
  default = 0
}

variable "acre_name" {
  description = "The name of the deployment"
  type = string
}

variable "acre_count" {
  description = "Number of instances to stand up"
  type = number
  default = 1
}

variable "acre_resource_group" {
  description = "The name of the resource group being deployed to"
  type = string
}

variable "acre_deployment_mode" {
  type = string
  default = "Incremental"
}

variable "acre_template_path" {
  description = "Path to ARM template being sourced"
  default = "./ARM/acre/e10.json.template"
}

variable "client_id" {
  description = "Service Principal to use (az ad sp create-for-rbac ...)"
}

variable "client_secret" {
  description = "Client Secret for Service Principal"
}

variable "default_name" {
  description = "Default name to use for resources"
}

variable "mssql_admin_user" {
  description = "User name"
}

variable "mssql_admin_pass" {
  description = "User pass"
}

variable "mssql_instance_name" {
  description = "Name of managed instance"
}

variable "mssql_parameters_path" {
  description = "Path to parameters template being sourced"
  default = "./ARM/mi-mssql/parameters.json.template"
}

variable "mssql_template_path" {
  description = "Path to ARM template being sourced"
  default = "./ARM/mi-mssql/managed-mssql-template.json"
}

variable "storage_account_name" {
  description = "Storage Account Name"
  default = "redisgeek"
}

variable "vnet_name" {
  description = "Name of virtual network"
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "location" {
  type = string
}

variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}
