output "azure_blob_container_url" {
  value = "https://${azurerm_storage_account.sa.name}.blob.core.windows.net/${azurerm_storage_container.backup.name}"
}

