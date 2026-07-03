resource "dynatrace_generic_types" "f5_interface" {
  name         = "f5:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "Network Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGJkOWQ5OWI0LTY5MGYtNTkxOC1hZDViLWQ4NmE5N2FkMTMwZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "f5_interface_{instance.name}_{interface.name}"
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
          display_name = "MAC Address"
          key          = "MacAddress"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Status"
          key          = "Status"
          pattern      = "{interface.status}"
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
          key           = "instance.name"
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
      id_pattern            = "f5_interface_{instance.name}_{interface.name}"
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
          key           = "instance.name"
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
