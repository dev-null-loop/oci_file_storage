output "id" {
  description = "The identifier of the quota rule. It is the base64 encoded string of the tuple <principalId, principalType, isHardQuota>."
  value       = oci_file_storage_file_system_quota_rule.this.id
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_file_system_quota_rule.this.display_name
}

output "file_system_id" {
  description = "The OCID of the file system."
  value       = oci_file_storage_file_system_quota_rule.this.file_system_id
}

output "is_hard_quota" {
  description = "The flag is an identifier to tell whether the quota rule will be enforced."
  value       = oci_file_storage_file_system_quota_rule.this.is_hard_quota
}

output "principal_id" {
  description = "An identifier for the owner of this usage and quota rule."
  value       = oci_file_storage_file_system_quota_rule.this.principal_id
}

output "principal_type" {
  description = "The type of the owner of this quota rule and usage."
  value       = oci_file_storage_file_system_quota_rule.this.principal_type
}

output "quota_limit_in_gigabytes" {
  description = "The value of the quota rule. The unit is Gigabyte."
  value       = oci_file_storage_file_system_quota_rule.this.quota_limit_in_gigabytes
}

output "time_created" {
  description = "The date and time the quota rule was started, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_file_system_quota_rule.this.time_created
}

output "time_updated" {
  description = "The date and time the quota rule was last updated, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_file_system_quota_rule.this.time_updated
}
