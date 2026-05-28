output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the file system snapshot policy."
  value       = oci_file_storage_filesystem_snapshot_policy.this.id
}

output "availability_domain" {
  description = "The availability domain that the file system snapshot policy is in."
  value       = oci_file_storage_filesystem_snapshot_policy.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the file system snapshot policy."
  value       = oci_file_storage_filesystem_snapshot_policy.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_file_storage_filesystem_snapshot_policy.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_filesystem_snapshot_policy.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_file_storage_filesystem_snapshot_policy.this.freeform_tags
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_filesystem_snapshot_policy.this.locks
}

output "policy_prefix" {
  description = "The prefix to apply to all snapshots created by this policy."
  value       = oci_file_storage_filesystem_snapshot_policy.this.policy_prefix
}

output "schedules" {
  description = "The list of associated snapshot schedules."
  value       = oci_file_storage_filesystem_snapshot_policy.this.schedules
}

output "state" {
  description = "The current state of this file system snapshot policy."
  value       = oci_file_storage_filesystem_snapshot_policy.this.state
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_filesystem_snapshot_policy.this.system_tags
}

output "time_created" {
  description = "The date and time the file system snapshot policy was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_filesystem_snapshot_policy.this.time_created
}
