data "oci_iot_iot_domains" "iot_iot_domains_lookup" {
  for_each = var.iot_iot_domains_lookup

  compartment_id      = each.value.compartment_id
  display_name        = each.value.display_name
  iot_domain_group_id = each.value.iot_domain_group_id
  state               = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

