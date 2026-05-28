variable "file_system_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the file system to take a snapshot of."
  type        = string
}

variable "name" {
  description = "(Required) Name of the snapshot. This value is immutable. It must also be unique with respect to all other non-DELETED snapshots on the associated file system."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "expiration_time" {
  description = "(Optional) (Updatable) The time when this snapshot will be deleted."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  type        = map(string)
  default     = {}
}

variable "lock_duration_details" {
  description = "(Optional) (Updatable) Details for setting a retention date or legal hold."
  type = object({
    lock_duration     = number
    lock_mode         = string
    cool_off_duration = optional(number)
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

variable "is_lock_override" {
  description = "(Optional) (Updatable) Whether to override locks (if any exist)."
  type        = bool
  default     = null
}
