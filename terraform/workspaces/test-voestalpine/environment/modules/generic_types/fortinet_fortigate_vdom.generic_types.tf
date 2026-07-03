resource "dynatrace_generic_types" "fortinet_fortigate_vdom" {
  name         = "fortinet:fortigate_vdom"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "FortiGate VDOM"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRlNWQ5MWY0LTFkOTYtNWQ1ZC1iOTM3LWFkOGRlNzYxYWY1Nb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "fortinet_fortigate_{alias}_{vdom}"
      instance_name_pattern = "{vdom} ({alias})"
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
          display_name = "VDOM"
          key          = "vdom"
          pattern      = "{vdom}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "vdom"
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
