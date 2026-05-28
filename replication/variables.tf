variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the replication."
  type        = string
}

variable "source_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the source file system."
  type        = string
}

variable "target_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the target file system."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information. An associated replication target will also created with the same `displayName`. Example: `My replication`"
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

variable "replication_interval" {
  description = "(Optional) (Updatable) Duration in minutes between replication snapshots."
  type        = string
  default     = null
}
