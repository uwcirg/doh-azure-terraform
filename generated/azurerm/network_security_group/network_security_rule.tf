resource "azurerm_network_security_rule" "tfer--AllowAnyCustom8080Inbound_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg-002F-securityRules-002F-AllowAnyCustom8080Inbound" {
  access                      = "Allow"
  description                 = "Allow traefik dashboard"
  destination_address_prefix  = "*"
  destination_port_range      = "8080"
  direction                   = "Inbound"
  name                        = "AllowAnyCustom8080Inbound"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--cirg-doh-2-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg_name}"
  priority                    = "350"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--HTTPS_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg-002F-securityRules-002F-HTTPS" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "443"
  direction                   = "Inbound"
  name                        = "HTTPS"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--cirg-doh-2-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg_name}"
  priority                    = "320"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--HTTPS_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-HTTPS" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "443"
  direction                   = "Inbound"
  name                        = "HTTPS"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "320"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--HTTP_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg-002F-securityRules-002F-HTTP" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "80"
  direction                   = "Inbound"
  name                        = "HTTP"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--cirg-doh-2-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg_name}"
  priority                    = "340"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--HTTP_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-HTTP" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "80"
  direction                   = "Inbound"
  name                        = "HTTP"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "340"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_161_SNMPD_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_161_SNMPD" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "161"
  direction                   = "Inbound"
  name                        = "Port_161_SNMPD"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "390"
  protocol                    = "Udp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "140.142.171.0/25"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_9100_Node_Exporter_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_9100_Node_Exporter" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "9100"
  direction                   = "Inbound"
  name                        = "Port_9100_Node_Exporter"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "360"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "140.142.171.0/25"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_9117_Apache_Exporter_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_9117_Apache_Exporter" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "9117"
  direction                   = "Inbound"
  name                        = "Port_9117_Apache_Exporter"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "380"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "140.142.171.0/25"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_9323_Dockerd_Metrics_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_9323_Dockerd_Metrics" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "9323"
  direction                   = "Inbound"
  name                        = "Port_9323_Dockerd_Metrics"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "370"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "140.142.171.0/25"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_9324_Cadvisor_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_9324_Cadvisor" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "9324"
  direction                   = "Inbound"
  name                        = "Port_9324_Cadvisor"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "400"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "140.142.171.0/25"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--Port_ICMP_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-Port_ICMP" {
  access                      = "Allow"
  description                 = "Ping"
  destination_address_prefix  = "*"
  destination_port_range      = "*"
  direction                   = "Inbound"
  name                        = "Port_ICMP"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "350"
  protocol                    = "Icmp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--SSH_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg-002F-securityRules-002F-SSH" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "22"
  direction                   = "Inbound"
  name                        = "SSH"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--cirg-doh-2-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-CirgDohResourceGroup20230614B-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-cirg-doh-2-nsg_name}"
  priority                    = "300"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroup20230614B_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "tfer--SSH_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg-002F-securityRules-002F-SSH" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "22"
  direction                   = "Inbound"
  name                        = "SSH"
  network_security_group_name = "${data.terraform_remote_state.network_security_group.outputs.azurerm_network_security_group_tfer--doh-poc-ravi-nsg_-002F-subscriptions-002F-2c3b3b6e-f318-44f8-bf8d-621e61a2b20a-002F-resourceGroups-002F-DOH-POC-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-doh-poc-ravi-nsg_name}"
  priority                    = "300"
  protocol                    = "Tcp"
  resource_group_name         = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}
