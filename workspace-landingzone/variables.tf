variable "subscription_id" {
  type = string
  description = "This is subscription id of where resources will be created"
  sensitive = true
}
variable "tenant_id" {
  type = string
  description = "This is tenant id of where our subscriptions will be."
  sensitive = true
}
variable "client_id" {
  type = string
  description = "This is client id of service principal which will be used to authenticate on Azure"
  sensitive = true
}
variable "client_secret" {
  type = string
  description = "This is client secret of service principal which will be used to authenticate on Azure"
  sensitive = true
}

variable "location" {
  type = string
  description = "This is geographical locaton on azure datacenter where resources will be created."
}

variable "rg_offset" {
  type = number
}

variable "environment_short_name" {
  type = string
}

variable "landing_Zone_short_name" {
  type = string
}

variable "subnet_address_prefixes" {
  type = list(any)
}

variable "keyvault_offset" {
  type = number
}

variable "vnet_addressspace" {
  type = list(any)
}

variable "subnet_offset" {
  type = string
}

variable "storage_account_tier" {
  type = string
}

variable "storage_account_replication_type" {
  type = string
}

variable "enable_https_traffic_only" {
  type = bool
}

variable "log_retention_in_days" {
  type = string
}

variable "recovery_services_vault_sku" {
  type = string
}

variable "publisher_name" {
  type = string
}

variable "publisher_email" {
  type = string
}

variable "apim_sku_name" {
  type = string
}

variable "sql_server_version" {
  type = string
}

variable "sqldb_retention_in_days" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "policylist" {
  type = list(any)
}