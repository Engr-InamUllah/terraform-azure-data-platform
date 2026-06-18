output "resource_group_name" {
  value = azurerm_resource_group.data.name
}

output "data_lake_id" {
  value = azurerm_storage_account.lake.id
}