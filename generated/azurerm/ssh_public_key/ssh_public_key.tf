resource "azurerm_ssh_public_key" "tfer--cirg-doh-2_key" {
  location            = "${data.terraform_remote_state.resource_group.outputs.azurerm_resource_group_tfer--CirgDohResourceGroupTemplates_location}"
  name                = "cirg-doh-2_key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUaWNXomtJB0g+jaaaxelE/hLx3x/IPBZwnKXZAhyVSDicgVCwRryUnwiELk3MyvQ/66O15XuA+DH9cNR6uA1c8tWGgYcGMSarZe3E+a6hLMyzw3+tZEEc+Sx21qluX/BYRAO8SZE6Q4DPPBb4YadAuIhwgWkR8vnm28senKqVquYtrv1HQH20OLx7GIXLJZMD3VU3dTJC3d8E4EEgPGDFKsgP+2bvndZ75etWhPh9u7Ek9q4sMdSptPK4d8a4RaMrPM1WRtwB0aVXcv3y+AmiC0TsN9mUI7Hga2MLD02/HqcZ1kHANOzjvJwOhMd+bCPCRmk2ED5HpSQ8IsCytRcN5p42kd9Me/rws88hhYwIyzw7stkY3pAK2/PrQ5AYFxf1etksH9ubYQUHCpi0IjwvIM7sTJ9lerRfir2P8xE/GU49uF8SyzvgqhmDEt164UJC/OVdLQB5dVUS226mtinEF/1uEn4CofZ8hliocS9FHEaNNwOEcQPaIjRR6mScyyk= generated-by-azure"
  resource_group_name = "CIRGDOHRESOURCEGROUP20230614B"
}
