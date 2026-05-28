output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the outbound connector."
  value       = oci_file_storage_outbound_connector.this.id
}

output "availability_domain" {
  description = "The availability domain the outbound connector is in."
  value       = oci_file_storage_outbound_connector.this.availability_domain
}

output "bind_distinguished_name" {
  description = "The LDAP Distinguished Name of the account."
  value       = oci_file_storage_outbound_connector.this.bind_distinguished_name
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the outbound connector."
  value       = oci_file_storage_outbound_connector.this.compartment_id
}

output "connector_type" {
  description = "The account type of this outbound connector."
  value       = oci_file_storage_outbound_connector.this.connector_type
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_file_storage_outbound_connector.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. It does not have to be unique, and it is changeable."
  value       = oci_file_storage_outbound_connector.this.display_name
}

output "endpoints" {
  description = "Array of server endpoints to use when connecting with the LDAP bind account."
  value       = oci_file_storage_outbound_connector.this.endpoints
}

output "freeform_tags" {
  description = "Free-form tags for this resource."
  value       = oci_file_storage_outbound_connector.this.freeform_tags
}

output "locks" {
  description = "Locks associated with this resource."
  value       = oci_file_storage_outbound_connector.this.locks
}

output "password_secret_id" {
  description = "The OCID of the password for the LDAP bind account in the Vault."
  value       = oci_file_storage_outbound_connector.this.password_secret_id
}

output "password_secret_version" {
  description = "Version of the password secret in the Vault to use."
  value       = oci_file_storage_outbound_connector.this.password_secret_version
}

output "state" {
  description = "The current state of this outbound connector."
  value       = oci_file_storage_outbound_connector.this.state
}

output "system_tags" {
  description = "System tags for this resource."
  value       = oci_file_storage_outbound_connector.this.system_tags
}

output "time_created" {
  description = "The date and time the outbound connector was created in RFC 3339 timestamp format."
  value       = oci_file_storage_outbound_connector.this.time_created
}

output "trusted_certificate_secret_id" {
  description = "The OCID of the trusted certificate for the LDAP server in the Vault."
  value       = oci_file_storage_outbound_connector.this.trusted_certificate_secret_id
}

output "trusted_certificate_secret_version" {
  description = "Version of the trusted certificate secret in the Vault to use."
  value       = oci_file_storage_outbound_connector.this.trusted_certificate_secret_version
}
