variable "availability_domain" {
  description = "(Required) The availability domain that the file system snapshot policy is in.  Example: `Uocm:PHX-AD-1`"
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the file system snapshot policy."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information.  Example: `policy1`"
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

variable "policy_prefix" {
  description = "(Optional) (Updatable) The prefix to apply to all snapshots created by this policy.  Example: `acme`"
  type        = string
  default     = null
}

variable "schedules" {
  description = "(Optional) (Updatable) The list of associated snapshot schedules. A maximum of 10 schedules can be associated with a policy."
  type = list(object({
    period       = string
    time_zone    = string
    day_of_month = optional(number)
    day_of_week  = optional(string)
    hour_of_day  = optional(number)
    lock_duration_details = optional(object({
      lock_duration     = number
      lock_mode         = string
      cool_off_duration = optional(number)
    }))
    month                         = optional(string)
    retention_duration_in_seconds = optional(string)
    schedule_prefix               = optional(string)
    time_schedule_start           = optional(string)
  }))
  default = []
}

variable "state" {
  description = "(Optional) (Updatable) The target state for the Filesystem Snapshot Policy. Could be set to `ACTIVE` or `INACTIVE`."
  type        = string
  default     = null
}
