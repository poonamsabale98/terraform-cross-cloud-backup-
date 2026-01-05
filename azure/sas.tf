data "azurerm_storage_account_sas" "blob_sas" {
  connection_string = azurerm_storage_account.sa.primary_connection_string

  https_only = true
  start      = timeoffset(timestamp(), "-5m")
  expiry     = timeoffset(timestamp(), "${var.sas_expiry_hours}h")

  services       = "b"
  resource_types = "o"
  permissions    = "wcr"
}
