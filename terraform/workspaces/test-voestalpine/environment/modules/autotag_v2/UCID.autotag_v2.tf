resource "dynatrace_autotag_v2" "UCID" {
  name                          = "UCID"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     =<<-EOT
        type("network:device"), fromRelationship.CALLS(type("network:device"),tag("UCID:nedcon_us_2161"))
      EOT
      value_format        = "nedcon_us_2161"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"),fromRelationships.isChildOf(type("snmp:com_dynatrace_extension_snmp_generic_cisco_device"),fromRelationship.isSameAs(type("network:device"),tag("UCID:nedcon_us_2161")))
      EOT
      value_format        = "nedcon_us_2161"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_cisco_device"), fromRelationship.isSameAs(type("network:device"),tag("UCID:nedcon_us_2161"))
      EOT
      value_format        = "nedcon_us_2161"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_device_interface"), fromRelationship.isChildOf(type("snmp:com_dynatrace_extension_snmp_generic_device"),toRelationship.isSameAs(type("network:device"),tag("UCID:nedcon_us_2161")))
      EOT
      value_format        = "nedcon_us_2161"
      value_normalization = "Leave text as-is"
    }
    rule {
      type                = "SELECTOR"
      enabled             = true
      entity_selector     =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_device"), toRelationship.isSameAs(type("network:device"),tag("UCID:nedcon_us_2161"))
      EOT
      value_format        = "nedcon_us_2161"
      value_normalization = "Leave text as-is"
    }
  }
}
