output "resource_group_id" {
  description = "Created Resource Group ID."
  value       = azurerm_resource_group.this.id
}

output "resource_group_name" {
  description = "Created Resource Group name."
  value       = azurerm_resource_group.this.name
}

output "storage_account_id" {
  description = "Created Storage Account ID."
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "Created Storage Account name."
  value       = azurerm_storage_account.this.name
}
