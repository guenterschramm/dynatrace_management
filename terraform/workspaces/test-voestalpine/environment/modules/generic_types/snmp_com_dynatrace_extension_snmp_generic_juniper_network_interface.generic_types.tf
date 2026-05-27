resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_network_interface" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_network_interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Generic Juniper SNMP Device Network Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDI3NDMwZDAxLWQ2ZDktNTRiZS1hM2Y2LWJlODlhOGUwOTcwZr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp.generic.juniper.network.interface.{device.address}-{if.idx}"
      instance_name_pattern = "Juniper network interface {if.descr} @ {device.address}"
      attributes {
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
          key           = "if.idx"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.descr"
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
    rule {
      id_pattern            = "snmp.generic.juniper.network.interface.{device.address}-{if.idx}"
      instance_name_pattern = "Juniper network interface {if.descr} @ {device.address}"
      attributes {
        attribute {
          display_name = "Network device address"
          key          = "device_address"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Interface Index"
          key          = "if_index"
          pattern      = "{if.idx}"
        }
        attribute {
          display_name = "PromiscuousMode"
          key          = "if_promiscuousmode"
          pattern      = "{if.promiscuousmode}"
        }
        attribute {
          display_name = "Interface Speed"
          key          = "if_speed"
          pattern      = "{if.speed}"
        }
        attribute {
          display_name = "Interface Type"
          key          = "if_type"
          pattern      = "{if.type}"
        }
        attribute {
          display_name = "Operational Status"
          key          = "if_operstatus"
          pattern      = "{oper.status}"
        }
        attribute {
          display_name = "MTU"
          key          = "if_mtu"
          pattern      = "{if.mtu}"
        }
        attribute {
          display_name = "Description"
          key          = "if_descr"
          pattern      = "{if.descr}"
        }
        attribute {
          display_name = "Admin Status"
          key          = "if_adminstatus"
          pattern      = "{admin.status}"
        }
        attribute {
          display_name = "MAC Address"
          key          = "if_mac"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "if.idx"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.descr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.if.entity)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "snmp.generic.juniper.network.interface.{device.address}-{if.idx}"
      instance_name_pattern = "Juniper network interface {if.descr} @ {device.address}"
      attributes {
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
          key           = "if.idx"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.descr"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic.if)"
          source_type = "Metrics"
        }
      }
    }
  }
}
