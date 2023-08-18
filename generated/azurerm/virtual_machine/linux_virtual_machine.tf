resource "azurerm_linux_virtual_machine" "tfer--cirg-doh-2" {
  admin_ssh_key {
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUaWNXomtJB0g+jaaaxelE/hLx3x/IPBZwnKXZAhyVSDicgVCwRryUnwiELk3MyvQ/66O15XuA+DH9cNR6uA1c8tWGgYcGMSarZe3E+a6hLMyzw3+tZEEc+Sx21qluX/BYRAO8SZE6Q4DPPBb4YadAuIhwgWkR8vnm28senKqVquYtrv1HQH20OLx7GIXLJZMD3VU3dTJC3d8E4EEgPGDFKsgP+2bvndZ75etWhPh9u7Ek9q4sMdSptPK4d8a4RaMrPM1WRtwB0aVXcv3y+AmiC0TsN9mUI7Hga2MLD02/HqcZ1kHANOzjvJwOhMd+bCPCRmk2ED5HpSQ8IsCytRcN5p42kd9Me/rws88hhYwIyzw7stkY3pAK2/PrQ5AYFxf1etksH9ubYQUHCpi0IjwvIM7sTJ9lerRfir2P8xE/GU49uF8SyzvgqhmDEt164UJC/OVdLQB5dVUS226mtinEF/1uEn4CofZ8hliocS9FHEaNNwOEcQPaIjRR6mScyyk= generated-by-azure"
    username   = "azureuser"
  }

  admin_username                                         = "azureuser"
  allow_extension_operations                             = "true"
  bypass_platform_safety_checks_on_user_schedule_enabled = "false"
  computer_name                                          = "cirg-doh-2"
  disable_password_authentication                        = "true"
  encryption_at_host_enabled                             = "false"
  eviction_policy                                        = "Deallocate"
  extensions_time_budget                                 = "PT1H30M"
  location                                               = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  max_bid_price                                          = "-1"
  name                                                   = "cirg-doh-2"
  network_interface_ids                                  = ["${data.terraform_remote_state.network_interface.outputs.azurerm_network_interface_tfer--cirg-doh-2281_id}"]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "cirg-doh-2_OsDisk_1_ba35cf690331495f9400692eda98089b"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_assessment_mode = "ImageDefault"
  patch_mode            = "ImageDefault"
  platform_fault_domain = "-1"
  priority              = "Spot"
  provision_vm_agent    = "true"
  resource_group_name   = "CIRGDOHRESOURCEGROUP20230614B"
  secure_boot_enabled   = "true"
  size                  = "Standard_D8lds_v5"

  source_image_reference {
    offer     = "debian-11"
    publisher = "debian"
    sku       = "11-gen2"
    version   = "latest"
  }

  vtpm_enabled = "true"
}

resource "azurerm_linux_virtual_machine" "tfer--doh-poc-ravi" {
  admin_username                                         = "cirg-admin"
  allow_extension_operations                             = "true"
  bypass_platform_safety_checks_on_user_schedule_enabled = "false"
  computer_name                                          = "doh-poc-ravi"
  disable_password_authentication                        = "false"
  encryption_at_host_enabled                             = "false"
  extensions_time_budget                                 = "PT1H30M"
  location                                               = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  max_bid_price                                          = "-1"
  name                                                   = "doh-poc-ravi"
  network_interface_ids                                  = ["${data.terraform_remote_state.network_interface.outputs.azurerm_network_interface_tfer--doh-poc-ravi712_id}"]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "doh-poc-ravi_OsDisk_1_d453170e064e49e09f6b361071a91b81"
    storage_account_type      = "StandardSSD_LRS"
    write_accelerator_enabled = "false"
  }

  patch_assessment_mode = "ImageDefault"
  patch_mode            = "ImageDefault"
  platform_fault_domain = "-1"
  priority              = "Regular"
  provision_vm_agent    = "true"
  resource_group_name   = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--DOH-POC_name}"
  secure_boot_enabled   = "false"
  size                  = "Standard_D2as_v4"

  source_image_reference {
    offer     = "debian-11"
    publisher = "debian"
    sku       = "11-gen2"
    version   = "latest"
  }

  tags = {
    doh-poc-type = "ravi-vm"
  }

  vtpm_enabled = "false"
}
