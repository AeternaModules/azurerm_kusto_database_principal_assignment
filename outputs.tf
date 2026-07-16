output "kusto_database_principal_assignments_id" {
  description = "Map of id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kusto_database_principal_assignments_cluster_name" {
  description = "Map of cluster_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "kusto_database_principal_assignments_database_name" {
  description = "Map of database_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "kusto_database_principal_assignments_name" {
  description = "Map of name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kusto_database_principal_assignments_principal_id" {
  description = "Map of principal_id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "kusto_database_principal_assignments_principal_name" {
  description = "Map of principal_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_name if v.principal_name != null && length(v.principal_name) > 0 }
}
output "kusto_database_principal_assignments_principal_type" {
  description = "Map of principal_type values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.principal_type if v.principal_type != null && length(v.principal_type) > 0 }
}
output "kusto_database_principal_assignments_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "kusto_database_principal_assignments_role" {
  description = "Map of role values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.role if v.role != null && length(v.role) > 0 }
}
output "kusto_database_principal_assignments_tenant_id" {
  description = "Map of tenant_id values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "kusto_database_principal_assignments_tenant_name" {
  description = "Map of tenant_name values across all kusto_database_principal_assignments, keyed the same as var.kusto_database_principal_assignments"
  value       = { for k, v in azurerm_kusto_database_principal_assignment.kusto_database_principal_assignments : k => v.tenant_name if v.tenant_name != null && length(v.tenant_name) > 0 }
}

