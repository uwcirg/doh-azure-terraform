resource "azurerm_network_interface" "tfer--cirg-doh-2281" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipconfig1"
    primary                       = "true"
    private_ip_address            = "10.1.0.4"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = "/subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/resourceGroups/CirgDohResourceGroup20230614B/providers/Microsoft.Network/publicIPAddresses/cirg-doh-2-ip"
    subnet_id                     = "/subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/resourceGroups/CirgDohResourceGroup20230614B/providers/Microsoft.Network/virtualNetworks/cirg-doh-2-vnet/subnets/default"
  }

  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "cirg-doh-2281"
  resource_group_name = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
}

resource "azurerm_network_interface" "tfer--doh-poc-ravi712" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipconfig1"
    primary                       = "true"
    private_ip_address            = "10.0.0.4"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = "/subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/resourceGroups/DOH-POC/providers/Microsoft.Network/publicIPAddresses/doh-poc-ravi-ip"
    subnet_id                     = "/subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/resourceGroups/DOH-POC/providers/Microsoft.Network/virtualNetworks/DOH-POC-vnet/subnets/default"
  }

  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "doh-poc-ravi712"
  resource_group_name = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"

  tags = {
    doh-poc-type = "ravi-vm"
  }
}
