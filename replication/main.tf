resource "oci_file_storage_replication" "this" {
  compartment_id = var.compartment_id
  source_id      = var.source_id
  target_id      = var.target_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
  is_lock_override     = var.is_lock_override
  replication_interval = var.replication_interval
}
