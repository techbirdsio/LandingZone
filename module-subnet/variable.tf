variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_offset" {
  type = number
}

variable "subnet_address_prefixes" {
  type = list(any)
}

variable "Service_Endpoints" {
  type    = list(any)
  default = ["Microsoft.KeyVault", "Microsoft.Sql", "Microsoft.Storage"]
}

variable "nsg_rules" {
  type = list(any)
  default = [
    {
      name                       = "inboundrule443",
      priority                   = "100",
      direction                  = "inbound",
      access                     = "allow",
      source_port_range          = "*",
      destination_port_range     = "443",
      source_address_prefix      = "*",
      destination_address_prefix = "*"
    },
    {
      name                       = "outboundrule443",
      priority                   = "101",
      direction                  = "outbound",
      access                     = "allow",
      source_port_range          = "443",
      destination_port_range     = "*",
      source_address_prefix      = "*",
      destination_address_prefix = "*"
    }
  ]
}

variable "tags" {
  type = map(any)
}