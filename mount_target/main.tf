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
  is_lock_override    = var.is_lock_override
  dynamic "kerberos" {
    for_each = var.kerberos[*]
    content {
      kerberos_realm                 = kerberos.value.kerberos_realm
      backup_key_tab_secret_version  = kerberos.value.backup_key_tab_secret_version
      current_key_tab_secret_version = kerberos.value.current_key_tab_secret_version
      is_kerberos_enabled            = kerberos.value.is_kerberos_enabled
      key_tab_secret_id              = kerberos.value.key_tab_secret_id
    }
  }
  dynamic "ldap_idmap" {
    for_each = var.ldap_idmap[*]
    content {
      cache_lifetime_seconds          = ldap_idmap.value.cache_lifetime_seconds
      cache_refresh_interval_seconds  = ldap_idmap.value.cache_refresh_interval_seconds
      group_search_base               = ldap_idmap.value.group_search_base
      negative_cache_lifetime_seconds = ldap_idmap.value.negative_cache_lifetime_seconds
      outbound_connector1id           = ldap_idmap.value.outbound_connector1id
      outbound_connector2id           = ldap_idmap.value.outbound_connector2id
      schema_type                     = ldap_idmap.value.schema_type
      user_search_base                = ldap_idmap.value.user_search_base
    }
  }
  dynamic "locks" {
    for_each = var.locks[*]
    content {
      type                = locks.value.type
      message             = locks.value.message
      related_resource_id = locks.value.related_resource_id
      time_created        = locks.value.time_created
    }
  }
  nsg_ids              = var.nsg_ids
  requested_throughput = var.requested_throughput
  security_attributes  = var.security_attributes
}
