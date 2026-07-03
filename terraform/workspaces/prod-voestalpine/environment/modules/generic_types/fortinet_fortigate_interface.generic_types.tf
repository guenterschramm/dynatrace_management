resource "dynatrace_generic_types" "fortinet_fortigate_interface" {
  name         = "fortinet:fortigate_interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "FortiGate Interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDVkMWQyYzZkLTA5NGEtNWVhNy1hMzFhLTdmNmFlMTYzOWVhYb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "fortinet_fortigate_{alias}_{vdom}_{if.name}"
      instance_name_pattern = "{if.name} ({alias})"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
        attribute {
          display_name = "Url"
          key          = "url"
          pattern      = "{url}"
        }
        attribute {
          display_name = "Alias"
          key          = "alias"
          pattern      = "{alias}"
        }
        attribute {
          display_name = "Interface"
          key          = "if_name"
          pattern      = "{if.name}"
        }
        attribute {
          display_name = "MAC Address"
          key          = "mac_address"
          pattern      = "{mac}"
        }
        attribute {
          display_name = "Interface ID"
          key          = "if_id"
          pattern      = "{if.id}"
        }
        attribute {
          display_name = "Status"
          key          = "oper_status"
          pattern      = "{oper_status}"
        }
        attribute {
          display_name = "VDOM"
          key          = "vdom"
          pattern      = "{vdom}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "if.id"
        }
        required_dimension {
          key           = "vdom"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "alias"
          value_pattern = "$exists()"
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
