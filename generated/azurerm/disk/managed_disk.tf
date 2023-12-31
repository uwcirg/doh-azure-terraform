resource "azurerm_managed_disk" "tfer--cirg-doh-2_DataDisk_0" {
  create_option                 = "Empty"
  disk_iops_read_only           = "0"
  disk_iops_read_write          = "5000"
  disk_mbps_read_only           = "0"
  disk_mbps_read_write          = "200"
  disk_size_gb                  = "1024"
  location                      = "westus2"
  max_shares                    = "3"
  name                          = "cirg-doh-2_DataDisk_0"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           = "CIRGDOHRESOURCEGROUP20230614B"
  storage_account_type          = "Premium_LRS"
  tier                          = "P30"
  trusted_launch_enabled        = "false"
  upload_size_bytes             = "0"
}

resource "azurerm_managed_disk" "tfer--cirg-doh-2_OsDisk_1_ba35cf690331495f9400692eda98089b" {
  create_option                 = "FromImage"
  disk_iops_read_only           = "0"
  disk_iops_read_write          = "120"
  disk_mbps_read_only           = "0"
  disk_mbps_read_write          = "25"
  disk_size_gb                  = "30"
  hyper_v_generation            = "V2"
  image_reference_id            = "/Subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/Providers/Microsoft.Compute/Locations/westus2/Publishers/debian/ArtifactTypes/VMImage/Offers/debian-11/Skus/11-gen2/Versions/0.20230601.1398"
  location                      = "westus2"
  max_shares                    = "0"
  name                          = "cirg-doh-2_OsDisk_1_ba35cf690331495f9400692eda98089b"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           = "CIRGDOHRESOURCEGROUP20230614B"
  storage_account_type          = "Premium_LRS"
  tier                          = "P4"
  trusted_launch_enabled        = "true"
  upload_size_bytes             = "0"
}

resource "azurerm_managed_disk" "tfer--doh-poc-ravi_OsDisk_1_d453170e064e49e09f6b361071a91b81" {
  create_option                 = "FromImage"
  disk_iops_read_only           = "0"
  disk_iops_read_write          = "500"
  disk_mbps_read_only           = "0"
  disk_mbps_read_write          = "60"
  disk_size_gb                  = "30"
  hyper_v_generation            = "V2"
  image_reference_id            = "/Subscriptions/2c3b3b6e-f318-44f8-bf8d-621e61a2b20a/Providers/Microsoft.Compute/Locations/westus2/Publishers/debian/ArtifactTypes/VMImage/Offers/debian-11/Skus/11-gen2/Versions/0.20220503.998"
  location                      = "westus2"
  max_shares                    = "0"
  name                          = "doh-poc-ravi_OsDisk_1_d453170e064e49e09f6b361071a91b81"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  storage_account_type          = "StandardSSD_LRS"

  tags = {
    doh-poc-type = "ravi-vm"
  }

  trusted_launch_enabled = "false"
  upload_size_bytes      = "0"
}
