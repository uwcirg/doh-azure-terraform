resource "azurerm_subnet" "tfer--default" {
  address_prefixes                               = ["10.0.0.0/24"]
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "default"
  private_endpoint_network_policies_enabled      = "true"
  private_link_service_network_policies_enabled  = "true"
  resource_group_name                            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  virtual_network_name                           = "${data.terraform_remote_state.virtual_network.outputs.azurerm_virtual_network_tfer--DOH-POC-vnet_name}"
}
