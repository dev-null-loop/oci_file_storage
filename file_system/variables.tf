variable "availability_domain" {
  description = "(Required) The availability domain to create the file system in.  Example: `Uocm:PHX-AD-1`"
  type        = number
}

variable "are_quota_rules_enabled" {
  description = "(Optional) (Updatable) Specifies the enforcement of quota rules on the file system."
  type        = bool
  default     = null
}

variable "clone_attach_status" {
  description = "(Optional) Specifies whether the clone file system is attached to its parent file system. If the value is set to 'DETACH', then the file system will be created, which is deep copied from the snapshot specified by sourceSnapshotId, else will remain attached to its parent."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to create the file system in."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. It does not have to be unique, and it is changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "filesystem_snapshot_policy_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the associated file system snapshot policy, which controls the frequency of snapshot creation and retention period of the taken snapshots."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "kms_key_id" {
  description = "(Optional) (Updatable) The OCID of KMS key used to encrypt the encryption keys associated with this file system. May be unset as a blank or deleted from the configuration to remove the KMS key."
  type        = string
  default     = null
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

variable "source_snapshot_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the snapshot used to create a cloned file system. See [Cloning a File System](https://docs.cloud.oracle.com/iaas/Content/File/Tasks/cloningFS.htm)."
  type        = string
  default     = null
}

variable "detach_clone_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Detach Clone. Could be set to any integer value."
  type        = number
  default     = null
}
