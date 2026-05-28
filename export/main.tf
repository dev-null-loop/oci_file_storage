resource "oci_file_storage_export" "this" {
  export_set_id  = var.export_set_id
  file_system_id = var.file_system_id
  path           = var.path
  dynamic "export_options" {
    for_each = var.export_options
    iterator = eo
    content {
      access                         = eo.value.access
      identity_squash                = eo.value.identity_squash
      require_privileged_source_port = eo.value.require_privileged_source_port
      source                         = eo.value.source
    }
  }
  is_idmap_groups_for_sys_auth = var.is_idmap_groups_for_sys_auth
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
}
