resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_ip_address" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_ip_address"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Generic Juniper SNMP Device IP Address"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDU4YzhhZTc1LTk1YmMtNTBlNy1iN2YwLWYxZTZkNDZiZGNlN77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "public-ip-addresses"
      id_pattern            = "snmp.generic.juniper.ip.address.{device.address}-{ip.addr}"
      instance_name_pattern = "Juniper IP Address {ip.addr}"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "ip_addr"
          pattern      = "{ip.addr}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "ip.addr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.ip_addr)"
          source_type = "Metrics"
        }
      }
    }
  }
}
