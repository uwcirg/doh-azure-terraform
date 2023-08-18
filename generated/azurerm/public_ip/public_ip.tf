resource "azurerm_public_ip" "tfer--cirg-doh-2-ip" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                    = "cirg-doh-2-ip"
  resource_group_name     = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
  sku                     = "Standard"
  sku_tier                = "Regional"
}

resource "azurerm_public_ip" "tfer--doh-poc-ravi-ip" {
  allocation_method       = "Dynamic"
  ddos_protection_mode    = "VirtualNetworkInherited"
  domain_name_label       = "azure-doh-poc-ravi"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                    = "doh-poc-ravi-ip"
  resource_group_name     = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  sku                     = "Basic"
  sku_tier                = "Regional"

  tags = {
    doh-poc-type = "ravi-vm"
  }
}
