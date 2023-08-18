resource "azurerm_network_security_group" "tfer--cirg-doh-2-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg" {
  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "cirg-doh-2-nsg"
  resource_group_name = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"

  security_rule {
    access                     = "Allow"
    description                = "Allow traefik dashboard"
    destination_address_prefix = "*"
    destination_port_range     = "8080"
    direction                  = "Inbound"
    name                       = "AllowAnyCustom8080Inbound"
    priority                   = "350"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "22"
    direction                  = "Inbound"
    name                       = "SSH"
    priority                   = "300"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "443"
    direction                  = "Inbound"
    name                       = "HTTPS"
    priority                   = "320"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "80"
    direction                  = "Inbound"
    name                       = "HTTP"
    priority                   = "340"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }
}

resource "azurerm_network_security_group" "tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg" {
  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "doh-poc-ravi-nsg"
  resource_group_name = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"

  security_rule {
    access                     = "Allow"
    description                = "Ping"
    destination_address_prefix = "*"
    destination_port_range     = "*"
    direction                  = "Inbound"
    name                       = "Port_ICMP"
    priority                   = "350"
    protocol                   = "Icmp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "161"
    direction                  = "Inbound"
    name                       = "Port_161_SNMPD"
    priority                   = "390"
    protocol                   = "Udp"
    source_address_prefix      = "140.142.171.0/25"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "22"
    direction                  = "Inbound"
    name                       = "SSH"
    priority                   = "300"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "443"
    direction                  = "Inbound"
    name                       = "HTTPS"
    priority                   = "320"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "80"
    direction                  = "Inbound"
    name                       = "HTTP"
    priority                   = "340"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "9100"
    direction                  = "Inbound"
    name                       = "Port_9100_Node_Exporter"
    priority                   = "360"
    protocol                   = "Tcp"
    source_address_prefix      = "140.142.171.0/25"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "9117"
    direction                  = "Inbound"
    name                       = "Port_9117_Apache_Exporter"
    priority                   = "380"
    protocol                   = "Tcp"
    source_address_prefix      = "140.142.171.0/25"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "9323"
    direction                  = "Inbound"
    name                       = "Port_9323_Dockerd_Metrics"
    priority                   = "370"
    protocol                   = "Tcp"
    source_address_prefix      = "140.142.171.0/25"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "9324"
    direction                  = "Inbound"
    name                       = "Port_9324_Cadvisor"
    priority                   = "400"
    protocol                   = "Tcp"
    source_address_prefix      = "140.142.171.0/25"
    source_port_range          = "*"
  }

  tags = {
    doh-poc-type = "ravi-vm"
  }
}
