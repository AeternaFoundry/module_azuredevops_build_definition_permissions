output "build_definition_permissions_id" {
  description = "Map of id values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.id }
}
output "build_definition_permissions_build_definition_id" {
  description = "Map of build_definition_id values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.build_definition_id }
}
output "build_definition_permissions_permissions" {
  description = "Map of permissions values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.permissions }
}
output "build_definition_permissions_principal" {
  description = "Map of principal values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.principal }
}
output "build_definition_permissions_project_id" {
  description = "Map of project_id values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.project_id }
}
output "build_definition_permissions_replace" {
  description = "Map of replace values across all build_definition_permissions, keyed the same as var.build_definition_permissions"
  value       = { for k, v in azuredevops_build_definition_permissions.build_definition_permissions : k => v.replace }
}

