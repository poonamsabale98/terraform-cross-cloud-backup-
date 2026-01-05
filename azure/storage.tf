resource "azurerm_storage_account" "sa" {
  name                     = var.azure_sa_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
  min_tls_version = "TLS1_2"

  blob_properties {
    versioning_enabled = true
  }

  identity { type = "SystemAssigned" }
}

resource "azurerm_storage_container" "backup" {
  name                  = var.azure_container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}