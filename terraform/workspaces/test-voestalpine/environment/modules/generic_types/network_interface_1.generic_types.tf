resource "dynatrace_generic_types" "network_interface_1" {
  name         = "network:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "Network interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDIwMzA4YmVlLTMxYzEtNWJjMy05NWUxLWIwMjRmZTVkMTZjNr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{interface.name}"
      instance_name_pattern = "{interface.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{interface.name}"
        }
        attribute {
          display_name = "Enabled State"
          key          = "EnabledState"
          pattern      = "{interface.enabled}"
        }
        attribute {
          display_name = "Status"
          key          = "Status"
          pattern      = "{interface.status}"
        }
        attribute {
          display_name = "Alias"
          key          = "Alias"
          pattern      = "{interface.alias}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "interface.status"
        }
        required_dimension {
          key           = "interface.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "mac.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.sys.interface)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{interface.name}"
      instance_name_pattern = "{interface.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "interface.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "mac.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.sys.interface)"
          source_type = "Metrics"
        }
      }
    }
  }
}
