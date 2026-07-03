resource "dynatrace_generic_types" "f5_virtualserver" {
  name         = "f5:virtualserver"
  enabled      = true
  created_by   = "com.dynatrace.extension.f5.bigip 3.0.6"
  display_name = "LTM Virtual Server"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGU3OTVkY2U1LTdjY2ItNTVmYi1hYzU5LWZiN2IzMzA1ZmU3NL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "webserver"
      id_pattern            = "f5_virtualserver_{virtualserver.addr}_{virtualserver.port}"
      instance_name_pattern = "{virtualserver.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Name"
          key          = "Name"
          pattern      = "{virtualserver.name}"
        }
        attribute {
          display_name = "Address"
          key          = "dt.ip_addresses"
          pattern      = "{virtualserver.addr}"
        }
        attribute {
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{virtualserver.port}"
        }
        attribute {
          display_name = "Enabled"
          key          = "Enabled"
          pattern      = "{virtualserver.enabled}"
        }
        attribute {
          display_name = "Type"
          key          = "Type"
          pattern      = "{virtualserver.type}"
        }
        attribute {
          display_name = "SNAT Type"
          key          = "SnatType"
          pattern      = "{virtualserver.snat.type}"
        }
        attribute {
          display_name = "SNAT Pool Name"
          key          = "SnatPoolName"
          pattern      = "{virtualserver.snatpool.name}"
        }
        attribute {
          display_name = "Default Pool Name"
          key          = "DefaultPoolName"
          pattern      = "{pool.name}"
        }
        attribute {
          display_name = "Enabled State"
          key          = "EnabledState"
          pattern      = "{virtualserver.enablestate}"
        }
        attribute {
          display_name = "Available State"
          key          = "AvailableState"
          pattern      = "{virtualserver.availstate}"
        }
        attribute {
          display_name = "State Detail"
          key          = "StateDetail"
          pattern      = "{virtualserver.statedetail}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "virtualserver.name"
        }
        required_dimension {
          key = "virtualserver.addr"
        }
        required_dimension {
          key           = "virtualserver.port"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.f5.bigip.virtualserver.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "webserver"
      id_pattern            = "f5_virtualserver_{virtualserver.addr}_{virtualserver.port}"
      instance_name_pattern = "{virtualserver.name}"
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
          key           = "virtualserver.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "virtualserver.addr"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "virtualserver.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.f5.bigip.virtualserver.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
