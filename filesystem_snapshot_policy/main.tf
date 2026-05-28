resource "oci_file_storage_filesystem_snapshot_policy" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
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
  policy_prefix    = var.policy_prefix
  dynamic "schedules" {
    for_each = var.schedules
    iterator = sc
    content {
      period       = sc.value.period
      time_zone    = sc.value.time_zone
      day_of_month = sc.value.day_of_month
      day_of_week  = sc.value.day_of_week
      hour_of_day  = sc.value.hour_of_day
      dynamic "lock_duration_details" {
        for_each = sc.value.lock_duration_details[*]
        iterator = ldd
        content {
          lock_duration     = ldd.value.lock_duration
          lock_mode         = ldd.value.lock_mode
          cool_off_duration = ldd.value.cool_off_duration
        }
      }
      month                         = sc.value.month
      retention_duration_in_seconds = sc.value.retention_duration_in_seconds
      schedule_prefix               = sc.value.schedule_prefix
      time_schedule_start           = sc.value.time_schedule_start
    }
  }
  state = var.state
}
