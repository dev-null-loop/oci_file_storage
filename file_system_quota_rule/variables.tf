variable "file_system_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the file system."
  type        = string
}

variable "is_hard_quota" {
  description = "(Required) The flag is an identifier to tell whether the quota rule will be enforced. If `isHardQuota` is true, the quota rule will be enforced so the write will be blocked if usage exceeds the hard quota limit. If `isHardQuota` is false, usage can exceed the soft quota limit. An alarm or notification will be sent to the customer, if the specific usage exceeds."
  type        = bool
}

variable "principal_type" {
  description = "(Required) The type of the owner of this quota rule and usage."
  type        = string
}

variable "quota_limit_in_gigabytes" {
  description = "(Required) (Updatable) The value of the quota rule. The unit is Gigabyte."
  type        = number
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information. Example: `UserXYZ's quota`"
  type        = string
  default     = null
}

variable "principal_id" {
  description = "(Optional) An identifier for the owner of this usage and quota rule. Unix-like operating systems use this integer value to identify a user or group to manage access control."
  type        = number
  default     = null
}

variable "quota_rule_id" {
  description = "(Optional) The identifier of the quota rule."
  type        = string
  default     = null
}

variable "are_violators_only" {
  description = "(Optional) Display only users or groups that violate soft or hard quotas."
  type        = bool
  default     = null
}
