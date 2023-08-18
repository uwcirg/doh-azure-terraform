resource "azurerm_resource_group" "tfer--AzureBackupRG_westus2_1" {
  location   = "westus2"
  managed_by = "subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/providers/Microsoft.RecoveryServices/"
  name       = "AzureBackupRG_westus2_1"
}

resource "azurerm_resource_group" "tfer--CirgDohResourceGroup20230614B" {
  location = "westus2"
  name     = "CirgDohResourceGroup20230614B"
}

resource "azurerm_resource_group" "tfer--CirgDohResourceGroupTemplates" {
  location = "westus2"
  name     = "CirgDohResourceGroupTemplates"
}

resource "azurerm_resource_group" "tfer--DOH-POC" {
  location = "westus2"
  name     = "DOH-POC"
}

resource "azurerm_resource_group" "tfer--NetworkWatcherRG" {
  location = "westus2"
  name     = "NetworkWatcherRG"
}

resource "azurerm_resource_group" "tfer--ResourceGroup2023-04-28" {
  location = "westus2"
  name     = "ResourceGroup2023-04-28"
}
