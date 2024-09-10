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
