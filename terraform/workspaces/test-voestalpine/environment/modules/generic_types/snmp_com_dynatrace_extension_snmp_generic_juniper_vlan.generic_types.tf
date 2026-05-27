resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_vlan" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_vlan"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Juniper SNMP Device VLAN"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDA2ZTIwOTdiLWIyNTAtNTBjOC1iZGNmLThlODlkMTYxOTZhM77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp.generic.juniper.vlan.{device.address}-{vlan.name}"
      instance_name_pattern = "{vlan.name} on {device.address}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "name"
          pattern      = "{vlan.name}"
        }
        attribute {
          display_name = "Egress Ports"
          key          = "egress_ports"
          pattern      = "{vlan.egressports}"
        }
        attribute {
          display_name = "Row Status"
          key          = "row_status"
          pattern      = "{vlan.row_status}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "vlan.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.vlan)"
          source_type = "Metrics"
        }
      }
    }
  }
}
