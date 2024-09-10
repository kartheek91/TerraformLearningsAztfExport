resource "azurerm_resource_group" "res-0" {
  location = "centralindia"
  name     = "kartheek-learnings"
}
resource "azurerm_storage_account" "res-1" {
  account_replication_type         = "RAGRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  location                         = "centralindia"
  name                             = "terraformexport"
  resource_group_name              = "kartheek-learnings"
  depends_on = [
    azurerm_resource_group.res-0,
  ]
}
resource "azurerm_storage_account" "res-0" {
  account_replication_type         = "RAGRS"
  account_tier                     = "Standard"
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  location                         = "centralindia"
  name                             = "terraformexport1"
  resource_group_name              = "kartheek-learnings"
  tags = {
    environment = "develop"
  }
}
