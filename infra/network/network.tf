# 리소스 그룹
resource "azurerm_resource_group" "resource-group" {
    name     = "cloudclub-test-rg"
    location = "East US"
}

# NSG
resource "azurerm_network_security_group" "default" {
    name                = "default-nsg"
    location            = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
}

# VNet
resource "azurerm_virtual_network" "vnet" {
    name                = "vnet"
    resource_group_name = azurerm_resource_group.resource-group.name
    location            = azurerm_resource_group.resource-group.location
    address_space       = ["10.0.0.0/16"]
}

resource "azure_subnet" "appgw-subnet" {
    name                 = "appgw-subnet"
    resource_group_name  = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.1.0/24"]
}

resource "azure_subnet" "frontend-subnet" {
    name                 = "frontend-subnet"
    resource_group_name  = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.2.0/24"]
}

resource "azure_subnet" "backend-subnet" {
    name                 = "backend-subnet"
    resource_group_name  = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.3.0/24"]
}

resource "azure_subnet" "private-endpoint-subnet" {
    name                 = "private-endpoint-subnet"
    resource_group_name  = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = ["10.0.4.0/24"]
}