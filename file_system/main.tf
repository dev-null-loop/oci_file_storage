data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_file_storage_file_system" "this" {
  availability_domain           = local.ads[var.availability_domain - 1].name
  compartment_id                = var.compartment_id
  clone_attach_status           = var.clone_attach_status
  defined_tags                  = var.defined_tags
  display_name                  = var.display_name
  filesystem_snapshot_policy_id = var.filesystem_snapshot_policy_id
  freeform_tags                 = var.freeform_tags
  kms_key_id                    = var.kms_key_id
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
  source_snapshot_id = var.source_snapshot_id
}
