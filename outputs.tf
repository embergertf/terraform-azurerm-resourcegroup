#
# Copyright 2024 Emmanuel Bergerat
#

output "name" {
  value       = azurerm_resource_group.this.name
  description = "Resource group name."
}
output "id" {
  value       = azurerm_resource_group.this.id
  description = "Resource group Id."
}
output "location" {
  value       = azurerm_resource_group.this.location
  description = "Resource group location."
}
output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Resource group name."
}
output "tags" {
  value       = azurerm_resource_group.this.tags
  description = "Resource group tags."
}
output "random_suffix" {
  value       = module.rg_name.random_suffix
  description = "Randomized piece of the Resource group name when \"`add_random = true`\"."
}
output "naming_values" {
  value       = module.rg_name.naming_values
  description = "A terraform object with the naming values in 1 variable."
}
