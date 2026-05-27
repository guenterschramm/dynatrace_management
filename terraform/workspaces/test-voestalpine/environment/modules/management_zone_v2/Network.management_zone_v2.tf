resource "dynatrace_management_zone_v2" "Network" {
  name = "Network"
  rules {
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"network:device\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"snmp:com_dynatrace_extension_snmp_generic_cisco_device\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"snmp:com_dynatrace_extension_snmp_generic_device_interface\")"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(\"snmp:com_dynatrace_extension_snmp_generic_device\")"
    }
  }
}
