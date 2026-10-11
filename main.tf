resource "azuredevops_build_definition_permissions" "build_definition_permissions" {
  for_each = var.build_definition_permissions

  build_definition_id = each.value.build_definition_id
  permissions         = each.value.permissions
  principal           = each.value.principal
  project_id          = each.value.project_id
  replace             = each.value.replace

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

