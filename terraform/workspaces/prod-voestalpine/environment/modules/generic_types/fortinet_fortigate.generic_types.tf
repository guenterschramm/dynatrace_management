resource "dynatrace_generic_types" "fortinet_fortigate" {
  name         = "fortinet:fortigate"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "FortiGate"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDAzMGFkNGQyLTFlZDgtMzM0Yy1iM2QzLTkyYTA4MWVmNDJiZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "fortinet_fortigate_{alias}"
      instance_name_pattern = "{alias}"
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
          display_name = "Version"
          key          = "version"
          pattern      = "{version}"
        }
        attribute {
          display_name = "Serial"
          key          = "serial"
          pattern      = "{serial}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "version"
        }
        required_dimension {
          key = "serial"
        }
        required_dimension {
          key           = "alias"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(fortigate.connectivity)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "host"
      id_pattern            = "fortinet_fortigate_{alias}"
      instance_name_pattern = "{alias}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Network device address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
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
      }
      required_dimensions {
        required_dimension {
          key = "url"
        }
        required_dimension {
          key = "alias"
        }
        required_dimension {
          key = "device.address"
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
