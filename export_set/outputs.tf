output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the export set."
  value       = oci_file_storage_export_set.this.id
}

output "availability_domain" {
  description = "The availability domain the export set is in."
  value       = oci_file_storage_export_set.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the export set."
  value       = oci_file_storage_export_set.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_export_set.this.display_name
}

output "max_fs_stat_bytes" {
  description = "Controls the maximum `tbytes`, `fbytes`, and `abytes`, values reported by `NFS FSSTAT` calls through any associated mount targets."
  value       = oci_file_storage_export_set.this.max_fs_stat_bytes
}

output "max_fs_stat_files" {
  description = "Controls the maximum `tfiles`, `ffiles`, and `afiles` values reported by `NFS FSSTAT` calls through any associated mount targets."
  value       = oci_file_storage_export_set.this.max_fs_stat_files
}

output "state" {
  description = "The current state of the export set."
  value       = oci_file_storage_export_set.this.state
}

output "time_created" {
  description = "The date and time the export set was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_export_set.this.time_created
}

output "vcn_id" {
  description = "The OCID of the virtual cloud network (VCN) the export set is in."
  value       = oci_file_storage_export_set.this.vcn_id
}
