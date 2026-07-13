variable "kusto_database_principal_assignments" {
  description = <<EOT
Map of kusto_database_principal_assignments, attributes below
Required:
    - cluster_name
    - database_name
    - name
    - principal_id
    - principal_type
    - resource_group_name
    - role
    - tenant_id
EOT

  type = map(object({
    cluster_name        = string
    database_name       = string
    name                = string
    principal_id        = string
    principal_type      = string
    resource_group_name = string
    role                = string
    tenant_id           = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.database_name) <= 260
      )
    ])
    error_message = "[from validate.DatabaseName: invalid when len(value) > 260]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.name) <= 260
      )
    ])
    error_message = "[from validate.DatabasePrincipalAssignmentName: invalid when len(value) > 260]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.tenant_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_database_principal_assignments : (
        length(v.principal_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

