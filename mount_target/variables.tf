variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to create the mount target."
  type        = string
}

variable "availability_domain" {
  description = "(Required) The availability domain in which to create the mount target."
  type        = number
}

variable "subnet_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the subnet in which to create the mount target."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information.  Example: `My file system`"
  type        = string
  default     = "mount_target"
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "hostname_label" {
  description = "(Optional) The hostname for the mount target's IP address, used for DNS resolution. The value is the hostname portion of the private IP address's fully qualified domain name (FQDN). For example, `files-1` in the FQDN `files-1.subnet123.vcn1.oraclevcn.com`. Must be unique across all VNICs in the subnet and comply with [RFC 952](https://tools.ietf.org/html/rfc952) and [RFC 1123](https://tools.ietf.org/html/rfc1123)."
  type        = string
  default     = null
}

variable "idmap_type" {
  description = "(Optional) (Updatable) The method used to map a Unix UID to secondary groups, if any."
  type        = string
  default     = null
}

variable "ip_address" {
  description = "(Optional) A private IP address of your choice. Must be an available IP address within the subnet's CIDR. If you don't specify a value, Oracle automatically assigns a private IP address from the subnet."
  type        = string
  default     = null
}

variable "is_lock_override" {
  description = "(Optional) (Updatable) Whether to override locks (if any exist)."
  type        = bool
  default     = null
}

variable "kerberos" {
  description = "(Optional) (Updatable) Kerberos details needed to create configuration."
  type = object({
    kerberos_realm                 = string
    backup_key_tab_secret_version  = optional(number)
    current_key_tab_secret_version = optional(number)
    is_kerberos_enabled            = optional(bool)
    key_tab_secret_id              = optional(string)
  })
  default = null
}

variable "ldap_idmap" {
  description = "(Optional) (Updatable) Mount target details about the LDAP ID mapping configuration."
  type = object({
    cache_lifetime_seconds          = optional(number)
    cache_refresh_interval_seconds  = optional(number)
    group_search_base               = optional(string)
    negative_cache_lifetime_seconds = optional(number)
    outbound_connector1id           = optional(string)
    outbound_connector2id           = optional(string)
    schema_type                     = optional(string)
    user_search_base                = optional(string)
  })
  default = null
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

variable "nsg_ids" {
  description = "(Optional) (Updatable) A list of Network Security Group [OCIDs](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) associated with this mount target. A maximum of 5 is allowed. Setting this to an empty array after the list is created removes the mount target from all NSGs. For more information about NSGs, see [Security Rules](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/securityrules.htm)."
  type        = list(string)
  default     = []
}

variable "requested_throughput" {
  description = "(Optional) (Updatable) Throughput for mount target in Gbps."
  type        = string
  default     = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security attributes are labels for a resource that can be referenced in a Zero Trust Packet Routing policy to control access to ZPR-supported resources."
  type        = map(string)
  default     = null
}
