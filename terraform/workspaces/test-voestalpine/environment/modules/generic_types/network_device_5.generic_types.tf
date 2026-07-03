resource "dynatrace_generic_types" "network_device_5" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.fortigate 2.0.2"
  display_name = "Network device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGZlYTIyNDQ4LWI3MzctNTUyYy05ZTMzLTY3YzE2MDUwNzVhM77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{alias}"
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
        required_dimension {
          key = "sys.name"
        }
      }
      sources {
        source {
          condition   = "$prefix(fortigate)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{alias}"
      attributes {
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
          key = "url"
        }
        required_dimension {
          key = "alias"
        }
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "sys.name"
        }
        required_dimension {
          key = "version"
        }
        required_dimension {
          key = "serial"
        }
      }
      sources {
        source {
          condition   = "$eq(fortigate.connectivity)"
          source_type = "Metrics"
        }
      }
    }
  }
}
