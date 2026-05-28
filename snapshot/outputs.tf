output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the snapshot."
  value       = oci_file_storage_snapshot.this.id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_file_storage_snapshot.this.defined_tags
}

output "expiration_time" {
  description = "The time when this snapshot will be deleted."
  value       = oci_file_storage_snapshot.this.expiration_time
}

output "file_system_id" {
  description = "The OCID of the file system from which the snapshot was created."
  value       = oci_file_storage_snapshot.this.file_system_id
}

output "filesystem_snapshot_policy_id" {
  description = "The OCID of the file system snapshot policy that created this snapshot."
  value       = oci_file_storage_snapshot.this.filesystem_snapshot_policy_id
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_file_storage_snapshot.this.freeform_tags
}

output "is_clone_source" {
  description = "Specifies whether the snapshot has been cloned."
  value       = oci_file_storage_snapshot.this.is_clone_source
}

output "lifecycle_details" {
  description = "Additional information about the current lifecycleState."
  value       = oci_file_storage_snapshot.this.lifecycle_details
}

output "lock_duration_details" {
  description = "Details for setting a retention date or legal hold."
  value       = oci_file_storage_snapshot.this.lock_duration_details
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_snapshot.this.locks
}

output "name" {
  description = "Name of the snapshot. This value is immutable."
  value       = oci_file_storage_snapshot.this.name
}

output "provenance_id" {
  description = "An OCID identifying the parent from which this snapshot was cloned."
  value       = oci_file_storage_snapshot.this.provenance_id
}

output "snapshot_time" {
  description = "The date and time the snapshot was taken, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_snapshot.this.snapshot_time
}

output "snapshot_type" {
  description = "Specifies the generation type of the snapshot."
  value       = oci_file_storage_snapshot.this.snapshot_type
}

output "state" {
  description = "The current state of the snapshot."
  value       = oci_file_storage_snapshot.this.state
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_snapshot.this.system_tags
}

output "time_created" {
  description = "The date and time the snapshot was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_snapshot.this.time_created
}

output "time_locked" {
  description = "The date and time when this snapshot was locked."
  value       = oci_file_storage_snapshot.this.time_locked
}
