resource "azurerm_virtual_network" "tfer--DOH-POC-vnet" {
  address_space           = ["10.0.0.0/16"]
  flow_timeout_in_minutes = "0"
  location                = "westus2"
  name                    = "DOH-POC-vnet"
  resource_group_name     = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"

  tags = {
    doh-poc-type = "ravi-vm"
  }
}

resource "azurerm_virtual_network" "tfer--cirg-doh-2-vnet" {
  address_space           = ["10.1.0.0/16"]
  flow_timeout_in_minutes = "0"
  location                = "westus2"
  name                    = "cirg-doh-2-vnet"
  resource_group_name     = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
}
