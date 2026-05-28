output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this export."
  value       = oci_file_storage_export.this.id
}

output "export_options" {
  description = "Policies that apply to NFS requests made through this export."
  value       = oci_file_storage_export.this.export_options
}

output "export_set_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this export's export set."
  value       = oci_file_storage_export.this.export_set_id
}

output "file_system_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this export's file system."
  value       = oci_file_storage_export.this.file_system_id
}

output "is_idmap_groups_for_sys_auth" {
  description = "Whether or not the export should use ID mapping for Unix groups rather than the group list provided within an NFS request's RPC header."
  value       = oci_file_storage_export.this.is_idmap_groups_for_sys_auth
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_export.this.locks
}

output "path" {
  description = "Path used to access the associated file system."
  value       = oci_file_storage_export.this.path
}

output "state" {
  description = "The current state of this export."
  value       = oci_file_storage_export.this.state
}

output "time_created" {
  description = "The date and time the export was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_export.this.time_created
}
