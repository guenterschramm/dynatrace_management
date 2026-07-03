resource "dynatrace_generic_types" "network_interface" {
  name         = "network:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "Network interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGFjNWIxZGU3LTBkZjYtNTM1Yy1iYTNlLTljMTUxM2RkN2RiYr7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      attributes {
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
        attribute {
          display_name = "Network device address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Interface Type"
          key          = "type"
          pattern      = "{if.type}"
        }
        attribute {
          display_name = "Operational Status"
          key          = "opStatus"
          pattern      = "{oper.status}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "oper.status"
        }
        required_dimension {
          key = "mac.address"
        }
        required_dimension {
          key = "sys.name"
        }
        required_dimension {
          key = "device.address"
        }
      }
      sources {
        source {
          condition   = "$prefix(fortigate.interface)"
          source_type = "Metrics"
        }
      }
    }
  }
}
