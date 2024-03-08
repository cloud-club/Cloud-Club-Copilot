resource "azurerm_search_service" "search" {
    name                = var.ai-search-name
    resource_group_name = azurerm_resource_group.resource-group.name
    location            = azurerm_resource_group.resource-group.location
    sku                 = var.sku
    replica_count       = var.replica_count
    partition_count     = var.partition_count
}