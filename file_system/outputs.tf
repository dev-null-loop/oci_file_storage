output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the file system."
  value       = oci_file_storage_file_system.this.id
}

output "are_quota_rules_enabled" {
  description = "Specifies the enforcement of quota rules on the file system."
  value       = oci_file_storage_file_system.this.are_quota_rules_enabled
}

output "availability_domain" {
  description = "The availability domain the file system is in."
  value       = oci_file_storage_file_system.this.availability_domain
}

output "clone_attach_status" {
  description = "Specifies whether the file system is attached to its parent file system."
  value       = oci_file_storage_file_system.this.clone_attach_status
}

output "clone_count" {
  description = "Specifies the total number of children of a file system."
  value       = oci_file_storage_file_system.this.clone_count
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the file system."
  value       = oci_file_storage_file_system.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace."
  value       = oci_file_storage_file_system.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_file_system.this.display_name
}

output "filesystem_snapshot_policy_id" {
  description = "The OCID of the associated file system snapshot policy."
  value       = oci_file_storage_file_system.this.filesystem_snapshot_policy_id
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  value       = oci_file_storage_file_system.this.freeform_tags
}

output "is_clone_parent" {
  description = "Specifies whether the file system has been cloned."
  value       = oci_file_storage_file_system.this.is_clone_parent
}

output "is_hydrated" {
  description = "Specifies whether the data has finished copying from the source to the clone."
  value       = oci_file_storage_file_system.this.is_hydrated
}

output "is_targetable" {
  description = "Specifies whether the file system can be used as a target file system for replication."
  value       = oci_file_storage_file_system.this.is_targetable
}

output "kms_key_id" {
  description = "The OCID of the KMS key used to encrypt the encryption keys associated with this file system."
  value       = oci_file_storage_file_system.this.kms_key_id
}

output "lifecycle_details" {
  description = "Additional information about the current lifecycleState."
  value       = oci_file_storage_file_system.this.lifecycle_details
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_file_system.this.locks
}

output "metered_bytes" {
  description = "The number of bytes consumed by the file system, including any snapshots."
  value       = oci_file_storage_file_system.this.metered_bytes
}

output "quota_enforcement_state" {
  description = "Displays the state of enforcement of quota rules on the file system."
  value       = oci_file_storage_file_system.this.quota_enforcement_state
}

output "replication_source_count" {
  description = "Specifies the total number of replications for which this file system is a source."
  value       = oci_file_storage_file_system.this.replication_source_count
}

output "replication_target_id" {
  description = "The OCID of the replication target associated with the file system."
  value       = oci_file_storage_file_system.this.replication_target_id
}

output "source_details" {
  description = "Source information for the file system."
  value       = oci_file_storage_file_system.this.source_details
}

output "state" {
  description = "The current state of the file system."
  value       = oci_file_storage_file_system.this.state
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_file_system.this.system_tags
}

output "time_created" {
  description = "The date and time the file system was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_file_system.this.time_created
}
