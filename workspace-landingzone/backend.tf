terraform {
  backend "azurerm" {
    storage_account_name = "cloudmatostfstate1"
    resource_group_name  = "cloudmatos-tfstate"
    container_name       = "tfstate"
    key                  = "landingzone.tfstate"
    subscription_id      = "1bb5c101-a51a-4e27-bb93-ed64eb33f952"
    tenant_id            = "afc81be4-1cab-4a83-ba31-8109996fcff6"
  }
}