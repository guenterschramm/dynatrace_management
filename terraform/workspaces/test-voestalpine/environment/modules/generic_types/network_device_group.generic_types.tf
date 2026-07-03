resource "dynatrace_generic_types" "network_device_group" {
  name         = "network:device_group"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  display_name = "Network device group"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDNkYTQxMjE0LWNiZGItNThjOS05Mjg3LTNiODAwMzRjYmNjN77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network"
      id_pattern            = "network_device_group_{group.label}"
      instance_name_pattern = "{group.label}"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_autodiscovery)"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Device discovery)"
        }
        required_dimension {
          key           = "group.label"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "network"
      id_pattern            = "network_device_group_{group.label}"
      instance_name_pattern = "{group.label}"
      role                  = "default"
      attributes {
        attribute {
          key     = "configured_ips"
          pattern = "{configured.ips}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_auto_discovery_config)"
        }
        required_dimension {
          key           = "group.label"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
