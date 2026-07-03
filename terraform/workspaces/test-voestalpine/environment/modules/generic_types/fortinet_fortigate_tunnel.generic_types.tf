resource "dynatrace_generic_types" "fortinet_fortigate_tunnel" {
  name         = "fortinet:fortigate_tunnel"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "FortiGate Tunnel"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGZjMWJhMzExLTk4ZDctNWZiMi1iNzc5LWE1ZjY5MGQ5YzJlOL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "aws-site-to-site-vpn"
      id_pattern            = "fortinet_fortigate_{alias}_{vdom}_{tunnel}"
      instance_name_pattern = "{tunnel} ({alias})"
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
          display_name = "Tunnel"
          key          = "tunnel"
          pattern      = "{tunnel}"
        }
        attribute {
          display_name = "VDOM"
          key          = "vdom"
          pattern      = "{vdom}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "tunnel"
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
          condition   = "$prefix(fortigate.tunnel)"
          source_type = "Metrics"
        }
      }
    }
  }
}
