
resource "azurerm_subnet" "securitymgtsubnet" {
    name                 = "SecurityMGTSubnet"
    resource_group_name  = azurerm_resource_group.securitygroup.name
    virtual_network_name = azurerm_virtual_network.securityvnet.name
    address_prefix       = "10.0.2.0/24"
}

