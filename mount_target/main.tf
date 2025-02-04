data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_file_storage_mount_target" "this" {
  availability_domain = local.ads[var.availability_domain - 1].name
  compartment_id      = var.compartment_id
  display_name        = var.display_name
  subnet_id           = var.subnet_id
  defined_tags        = var.defined_tags
  freeform_tags       = var.freeform_tags
  hostname_label      = var.hostname_label
  idmap_type          = var.idmap_type
  ip_address          = var.ip_address
  nsg_ids             = var.nsg_ids
}
