resource "dynatrace_generic_types" "fortinet_fortigate_tunnel_proxy" {
  name         = "fortinet:fortigate_tunnel_proxy"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "FortiGate Tunnel Proxy"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDJlMmMyZTQxLWEzNTUtNTk0ZC04NWQxLWJjNjdhOWZjZjIyM77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "proxy"
      id_pattern            = "fortinet_fortigate_{alias}_{vdom}_{tunnel}_{proxy}"
      instance_name_pattern = "{proxy} ({alias}/{tunnel})"
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
          display_name = "Proxy"
          key          = "proxy"
          pattern      = "{proxy}"
        }
        attribute {
          display_name = "Status"
          key          = "status"
          pattern      = "{status}"
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
          key = "proxy"
        }
        required_dimension {
          key = "status"
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
          condition   = "$eq(fortigate.tunnel.proxy.status)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "proxy"
      id_pattern            = "fortinet_fortigate_{alias}_{vdom}_{tunnel}_{proxy}"
      instance_name_pattern = "{alias}: Tunnel {tunnel} - Proxy {proxy}"
      role                  = "default"
      attributes {
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
          display_name = "Proxy"
          key          = "proxy"
          pattern      = "{proxy}"
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
          key = "proxy"
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
          condition   = "$prefix(fortigate)"
          source_type = "Metrics"
        }
      }
    }
  }
}
