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
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_database_principal_assignment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: cluster_name
  #   source:    [from validate.ClusterName] !regexp.MustCompile(`^[a-z][a-z0-9\-]+$`).MatchString(name)
  # path: cluster_name
  #   source:    [from validate.ClusterName] len(name) < 4 || len(name) > 22
  # path: database_name
  #   source:    [from validate.DatabaseName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: database_name
  #   source:    [from validate.DatabaseName] !regexp.MustCompile(`^[a-zA-Z0-9\s._-]+$`).MatchString(name)
  # path: database_name
  #   condition: length(value) <= 260
  #   message:   [from validate.DatabaseName: invalid when len(value) > 260]
  #   source:    [from validate.DatabaseName: invalid when len(value) > 260]
  # path: name
  #   source:    [from validate.DatabasePrincipalAssignmentName] regexp.MustCompile(`^[\s]+$`).MatchString(name)
  # path: name
  #   source:    [from validate.DatabasePrincipalAssignmentName] !regexp.MustCompile(`^[a-zA-Z0-9\s.-]+$`).MatchString(name)
  # path: name
  #   condition: length(value) <= 260
  #   message:   [from validate.DatabasePrincipalAssignmentName: invalid when len(value) > 260]
  #   source:    [from validate.DatabasePrincipalAssignmentName: invalid when len(value) > 260]
  # path: principal_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: role
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

