variable "iot_iot_domains_lookup" {
  description = <<EOT
Map of iot_iot_domains_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - iot_domain_group_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    display_name        = optional(string)
    iot_domain_group_id = optional(string)
    state               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

