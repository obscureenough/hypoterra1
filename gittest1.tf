provider "azurerm" {
  version = "=2.0.0"
  features {}
}

#####################
# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "securitygroup" {
    name     = "SecurityGroup"
    location = "ukwest"

    tags = {
        environment = "Security Demo"
    }
}


#####################
# Create virtual networks
resource "azurerm_virtual_network" "securityvnet" {
    name                = "SecurityVNET"
    address_space       = ["10.0.0.0/16"]
    location            = "ukwest"
    resource_group_name = azurerm_resource_group.securitygroup.name


    tags = {
        environment = "Security Demo"
    }
}
