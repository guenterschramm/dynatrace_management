resource "dynatrace_autotag_v2" "Network" {
  name                          = "Network"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(\"snmp:com_dynatrace_extension_snmp_generic_device_interface\")"
      value_format        = "generic"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(\"snmp:com_dynatrace_extension_snmp_generic_device\")"
      value_format        = "Generic"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(\"snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface\")"
      value_format        = "cisco"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     = "type(\"snmp:com_dynatrace_extension_snmp_generic_cisco_device\")"
      value_format        = "cisco"
      value_normalization = "Leave text as-is"
    }
  }
}
