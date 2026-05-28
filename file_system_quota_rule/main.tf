resource "oci_file_storage_file_system_quota_rule" "this" {
  file_system_id           = var.file_system_id
  is_hard_quota            = var.is_hard_quota
  principal_type           = var.principal_type
  quota_limit_in_gigabytes = var.quota_limit_in_gigabytes
  display_name             = var.display_name
  principal_id             = var.principal_id
  quota_rule_id            = var.quota_rule_id
  are_violators_only       = var.are_violators_only
}
