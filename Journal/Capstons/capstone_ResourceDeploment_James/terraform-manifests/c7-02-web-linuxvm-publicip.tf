# Create Public IP Address
resource "azurerm_public_ip" "web_linuxvm_publicip" {
  name = "${local.resource_name_prefix}-web-linuxvm-publicip"
  resource_group_name = watttest_resource_group.rg.name
  location = watttest_resource_group.rg.location
  allocation_method = "Static"
  sku = "Standard"
  domain_name_label = "app1-vm-${random_string.myrandom.id}"
}

