output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the mount target."
  value       = oci_file_storage_mount_target.this.id
}

output "export_set_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the associated export set. Controls what file systems will be exported through Network File System (NFS) protocol on this mount target. "
  value       = oci_file_storage_mount_target.this.export_set_id
}
