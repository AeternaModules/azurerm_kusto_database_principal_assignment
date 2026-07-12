output "kusto_database_principal_assignments_id" {
  description = "Map of id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.id }
}
output "kusto_database_principal_assignments_cluster_name" {
  description = "Map of cluster_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.cluster_name }
}
output "kusto_database_principal_assignments_database_name" {
  description = "Map of database_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.database_name }
}
output "kusto_database_principal_assignments_name" {
  description = "Map of name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.name }
}
output "kusto_database_principal_assignments_principal_id" {
  description = "Map of principal_id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_id }
}
output "kusto_database_principal_assignments_principal_name" {
  description = "Map of principal_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_name }
}
output "kusto_database_principal_assignments_principal_type" {
  description = "Map of principal_type values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_type }
}
output "kusto_database_principal_assignments_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.resource_group_name }
}
output "kusto_database_principal_assignments_role" {
  description = "Map of role values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.role }
}
output "kusto_database_principal_assignments_tenant_id" {
  description = "Map of tenant_id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.tenant_id }
}
output "kusto_database_principal_assignments_tenant_name" {
  description = "Map of tenant_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.tenant_name }
}

