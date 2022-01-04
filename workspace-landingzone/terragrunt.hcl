# Indicate what region to deploy the resources into
generate "provider" {
  path      = "providers.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "azurerm" {
  features {}
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  skip_provider_registration = true
}
provider "azuread" {
}
EOF
}

remote_state {
backend = "azurerm"
generate = {
path      = "backend.tf"
if_exists = "overwrite_terragrunt"
}
config = {
    resource_group_name  = "cloudmatos-tfstate"
    storage_account_name = "cloudmatostfstate1"
    container_name       = "tfstate" 
    key            = "${path_relative_to_include()}/terraform.tfstate"
  }
}