resource "azurerm_private_endpoint" "aoai-pe" {
    name                = "aoai-private-endpoint"
    location            = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
    subnet_id           = azurerm_subnet.private-endpoint-subnet.id
    private_service_connection {
        name                           = "aoai-private-service-connection"
        private_connection_resource_id = azurerm_aoai_instance.example.id
        subresource_names              = [""]
        is_manual_connection = false
    }
}

resource "azurerm_private_endpoint" "ai-search-pe" {
    name                = "ai-search-private-endpoint"
    location            = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
    subnet_id           = azurerm_subnet.private-endpoint-subnet.id
    private_service_connection {
        name                           = "ai-search-private-service-connection"
        private_connection_resource_id = azurerm_ai_search.example.id
        subresource_names              = [""]
        is_manual_connection = false
    }
}