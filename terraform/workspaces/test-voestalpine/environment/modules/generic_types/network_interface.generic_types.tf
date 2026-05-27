resource "dynatrace_generic_types" "network_interface" {
  name         = "network:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Network interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGVkMjkwZjE4LWMyZGYtNTAzMy1hNGE4LTZhY2ViZWJlMDQ1Zr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
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
          key          = "ifOperStatus"
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
          key          = "ifAdminStatus"
          pattern      = "{admin.status}"
        }
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
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
          key           = "mac.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "if.name"
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
