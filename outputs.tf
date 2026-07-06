output "kusto_database_principal_assignments" {
  description = "All kusto_database_principal_assignment resources"
  value       = azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments
}
output "kusto_database_principal_assignments_cluster_name" {
  description = "List of cluster_name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.cluster_name]
}
output "kusto_database_principal_assignments_database_name" {
  description = "List of database_name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.database_name]
}
output "kusto_database_principal_assignments_name" {
  description = "List of name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.name]
}
output "kusto_database_principal_assignments_principal_id" {
  description = "List of principal_id values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.principal_id]
}
output "kusto_database_principal_assignments_principal_name" {
  description = "List of principal_name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.principal_name]
}
output "kusto_database_principal_assignments_principal_type" {
  description = "List of principal_type values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.principal_type]
}
output "kusto_database_principal_assignments_resource_group_name" {
  description = "List of resource_group_name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.resource_group_name]
}
output "kusto_database_principal_assignments_role" {
  description = "List of role values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.role]
}
output "kusto_database_principal_assignments_tenant_id" {
  description = "List of tenant_id values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.tenant_id]
}
output "kusto_database_principal_assignments_tenant_name" {
  description = "List of tenant_name values across all kusto_database_principal_assignments"
  value       = [for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : v.tenant_name]
}

