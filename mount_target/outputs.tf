output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the mount target."
  value       = oci_file_storage_mount_target.this.id
}

output "export_set_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the associated export set. Controls what file systems will be exported through Network File System (NFS) protocol on this mount target. "
  value       = oci_file_storage_mount_target.this.export_set_id
}

output "availability_domain" {
  description = "The availability domain the mount target is in."
  value       = oci_file_storage_mount_target.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the mount target."
  value       = oci_file_storage_mount_target.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_file_storage_mount_target.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_mount_target.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_file_storage_mount_target.this.freeform_tags
}

output "idmap_type" {
  description = "The method used to map a Unix UID to secondary groups."
  value       = oci_file_storage_mount_target.this.idmap_type
}

output "kerberos" {
  description = "Allows administrator to configure a mount target to interact with the administrator's Kerberos infrastructure."
  value       = oci_file_storage_mount_target.this.kerberos
}

output "ldap_idmap" {
  description = "Mount target details about the LDAP ID mapping configuration."
  value       = oci_file_storage_mount_target.this.ldap_idmap
}

output "lifecycle_details" {
  description = "Additional information about the current lifecycleState."
  value       = oci_file_storage_mount_target.this.lifecycle_details
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_mount_target.this.locks
}

output "mount_target_ipv6ids" {
  description = "The OCIDs of the IPv6 addresses associated with this mount target."
  value       = oci_file_storage_mount_target.this.mount_target_ipv6ids
}

output "nsg_ids" {
  description = "A list of Network Security Group OCIDs associated with this mount target."
  value       = oci_file_storage_mount_target.this.nsg_ids
}

output "observed_throughput" {
  description = "Current billed throughput for mount target in Gbps."
  value       = oci_file_storage_mount_target.this.observed_throughput
}

output "private_ip_ids" {
  description = "The OCIDs of the private IP addresses associated with this mount target."
  value       = oci_file_storage_mount_target.this.private_ip_ids
}

output "requested_throughput" {
  description = "New throughput for mount target at the end of billing cycle in Gbps."
  value       = oci_file_storage_mount_target.this.requested_throughput
}

output "reserved_storage_capacity" {
  description = "Reserved capacity (GB) associated with this mount target."
  value       = oci_file_storage_mount_target.this.reserved_storage_capacity
}

output "security_attributes" {
  description = "Security attributes for this resource."
  value       = oci_file_storage_mount_target.this.security_attributes
}

output "state" {
  description = "The current state of the mount target."
  value       = oci_file_storage_mount_target.this.state
}

output "subnet_id" {
  description = "The OCID of the subnet the mount target is in."
  value       = oci_file_storage_mount_target.this.subnet_id
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_mount_target.this.system_tags
}

output "time_billing_cycle_end" {
  description = "The date and time the mount target current billing cycle will end."
  value       = oci_file_storage_mount_target.this.time_billing_cycle_end
}

output "time_created" {
  description = "The date and time the mount target was created, expressed in RFC 3339 timestamp format."
  value       = oci_file_storage_mount_target.this.time_created
}
