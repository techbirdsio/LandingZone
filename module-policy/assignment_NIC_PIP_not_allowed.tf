resource "azurerm_policy_assignment" "NIC_PIP_not_allowed" {
  count                = contains(var.policylist, "NIC_PIP_not_allowed") ? 1 : 0
  name                 = "Network interfaces should not have public IPs"
  scope                = var.policyscope
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/83a86a26-fd1f-447c-b59d-e51f44264114"
  description          = "This policy denies the network interfaces which are configured with any public IP. Public IP addresses allow internet resources to communicate inbound to Azure resources, and Azure resources to communicate outbound to the internet. This should be reviewed by the network security team."
  display_name         = "Network interfaces should not have public IPs"
}