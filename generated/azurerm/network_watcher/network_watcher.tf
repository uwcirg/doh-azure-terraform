resource "azurerm_network_watcher" "tfer--NetworkWatcher_westus2" {
  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "NetworkWatcher_westus2"
  resource_group_name = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--NetworkWatcherRG_name}"
}
