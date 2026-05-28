resource "oci_file_storage_export_set" "this" {
  mount_target_id   = var.mount_target_id
  display_name      = var.display_name
  max_fs_stat_bytes = var.max_fs_stat_bytes
  max_fs_stat_files = var.max_fs_stat_files
}
