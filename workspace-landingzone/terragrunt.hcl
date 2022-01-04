terraform {
  source = "https://registry.terraform.io/providers/hashicorp/azurerm/latest"
}

# Indicate what region to deploy the resources into
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "azurerm" {
  features {}
  skip_provider_registration = true
}
EOF
}