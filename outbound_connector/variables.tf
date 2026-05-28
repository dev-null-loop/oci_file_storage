variable "availability_domain" {
  description = "(Required) The availability domain the outbound connector is in. May be unset as a blank or NULL value.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "bind_distinguished_name" {
  description = "(Required) The LDAP Distinguished Name of the bind account."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the outbound connector."
  type        = string
}

variable "connector_type" {
  description = "(Required) The account type of this outbound connector."
  type        = string
}

variable "endpoints" {
  description = "(Required) Array of server endpoints to use when connecting with the LDAP bind account."
  type = list(object({
    hostname = string
    port     = string
  }))
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information.  Example: `My outbound connector`"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  type        = map(string)
  default     = {}
}

variable "locks" {
  description = "(Optional) Locks associated with this resource."
  type = object({
    type                = string
    message             = optional(string)
    related_resource_id = optional(string)
    time_created        = optional(string)
  })
  default = null
}

variable "is_lock_override" {
  description = "(Optional) (Updatable) Whether to override locks (if any exist)."
  type        = bool
  default     = null
}

variable "password_secret_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the password for the LDAP bind account in the Vault."
  type        = string
  default     = null
}

variable "password_secret_version" {
  description = "(Optional) Version of the password secret in the Vault to use."
  type        = number
  default     = null
}

variable "trusted_certificate_secret_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the trusted certificate for the LDAP server in the Vault."
  type        = string
  default     = null
}

variable "trusted_certificate_secret_version" {
  description = "(Optional) Version of the trusted certificate secret in the Vault to use."
  type        = number
  default     = null
}
