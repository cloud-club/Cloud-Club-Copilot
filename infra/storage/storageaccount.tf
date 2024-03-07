resource "azurerm_storage_account" "storage-account" {
    name                     = "cloudclub-sa"
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
    name                  = "notion-export"
    storage_account_name  = azurerm_storage_account.example.name
    container_access_type = "private"
}

resource "azurerm_storage_blob" "blob" {
    name                   = "notion-export-blobs"
    storage_account_name   = azurerm_storage_account.example.name
    storage_container_name = azurerm_storage_container.example.name
    type                   = "Block"
    source                 = "./data"
}
