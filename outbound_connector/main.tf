resource "oci_file_storage_outbound_connector" "this" {
  availability_domain     = var.availability_domain
  bind_distinguished_name = var.bind_distinguished_name
  compartment_id          = var.compartment_id
  connector_type          = var.connector_type
  dynamic "endpoints" {
    for_each = var.endpoints
    iterator = ep
    content {
      hostname = ep.value.hostname
      port     = ep.value.port
    }
  }
  defined_tags  = var.defined_tags
  display_name  = var.display_name
  freeform_tags = var.freeform_tags
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
  is_lock_override                   = var.is_lock_override
  password_secret_id                 = var.password_secret_id
  password_secret_version            = var.password_secret_version
  trusted_certificate_secret_id      = var.trusted_certificate_secret_id
  trusted_certificate_secret_version = var.trusted_certificate_secret_version
}
