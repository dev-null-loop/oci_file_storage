variable "export_set_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this export's export set."
  type        = string
}

variable "file_system_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of this export's file system."
  type        = string
}

variable "path" {
  description = "(Required) Path used to access the associated file system."
  type        = string
}

variable "export_options" {
  description = "(Optional) (Updatable) Export options for the new export."
  type = list(object({
    access                         = optional(string)
    allowed_auth                   = optional(string)
    anonymous_gid                  = optional(string)
    anonymous_uid                  = optional(string)
    identity_squash                = optional(string)
    is_anonymous_access_allowed    = optional(bool)
    require_privileged_source_port = optional(bool)
    source                         = string
  }))
}

variable "is_idmap_groups_for_sys_auth" {
  description = "(Optional) (Updatable) Whether or not the export should use ID mapping for Unix groups rather than the group list provided within an NFS request's RPC header. When this flag is true the Unix UID from the RPC header is used to retrieve the list of secondary groups from a the ID mapping subsystem. The primary GID is always taken from the RPC header. If ID mapping is not configured, incorrectly configured, unavailable, or cannot be used to determine a list of secondary groups then an empty secondary group list is used for authorization. If the number of groups exceeds the limit of 256 groups, the list retrieved from LDAP is truncated to the first 256 groups read."
  type        = bool
  default     = false
}

variable "locks" {
  description = "(Optional) Locks associated with this resource."
  type = object({
    message             = optional(string)
    related_resource_id = optional(string)
    time_created        = optional(string)
    type                = string
  })
  default = null
}
