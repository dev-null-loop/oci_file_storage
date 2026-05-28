resource "oci_file_storage_snapshot" "this" {
  file_system_id  = var.file_system_id
  name            = var.name
  defined_tags    = var.defined_tags
  expiration_time = var.expiration_time
  freeform_tags   = var.freeform_tags
  dynamic "lock_duration_details" {
    for_each = var.lock_duration_details[*]
    content {
      lock_duration     = lock_duration_details.value.lock_duration
      lock_mode         = lock_duration_details.value.lock_mode
      cool_off_duration = lock_duration_details.value.cool_off_duration
    }
  }
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
  is_lock_override = var.is_lock_override
}
