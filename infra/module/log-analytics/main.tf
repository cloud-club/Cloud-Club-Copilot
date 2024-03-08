resource "azurerm_log_analytics_workspace" "log-analytics" {
    name                = var.name
    location            = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
    sku                 = var.sku
    retention_in_days   = 7
}