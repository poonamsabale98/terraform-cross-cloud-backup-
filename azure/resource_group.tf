resource "azurerm_resource_group" "rg" {
  name     = var.azure_rg_name
  location = var.azure_location
}
