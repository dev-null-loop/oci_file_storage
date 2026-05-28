output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the replication."
  value       = oci_file_storage_replication.this.id
}

output "availability_domain" {
  description = "The availability domain the replication is in."
  value       = oci_file_storage_replication.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the replication."
  value       = oci_file_storage_replication.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_file_storage_replication.this.defined_tags
}

output "delta_progress" {
  description = "Percentage progress of the current replication cycle."
  value       = oci_file_storage_replication.this.delta_progress
}

output "delta_status" {
  description = "The current state of the snapshot during replication operations."
  value       = oci_file_storage_replication.this.delta_status
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_replication.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_file_storage_replication.this.freeform_tags
}

output "last_snapshot_id" {
  description = "The OCID of the last snapshot that has been replicated completely."
  value       = oci_file_storage_replication.this.last_snapshot_id
}

output "lifecycle_details" {
  description = "Additional information about the current lifecycleState."
  value       = oci_file_storage_replication.this.lifecycle_details
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_replication.this.locks
}

output "recovery_point_time" {
  description = "The snapshotTime of the most recent recoverable replication snapshot in RFC 3339 timestamp format."
  value       = oci_file_storage_replication.this.recovery_point_time
}

output "replication_interval" {
  description = "Duration in minutes between replication snapshots."
  value       = oci_file_storage_replication.this.replication_interval
}

output "replication_target_id" {
  description = "The OCID of the ReplicationTarget."
  value       = oci_file_storage_replication.this.replication_target_id
}

output "source_id" {
  description = "The OCID of the source file system."
  value       = oci_file_storage_replication.this.source_id
}

output "state" {
  description = "The current state of this replication."
  value       = oci_file_storage_replication.this.state
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_replication.this.system_tags
}

output "target_id" {
  description = "The OCID of the target file system."
  value       = oci_file_storage_replication.this.target_id
}

output "time_created" {
  description = "The date and time the replication was created in RFC 3339 timestamp format."
  value       = oci_file_storage_replication.this.time_created
}
