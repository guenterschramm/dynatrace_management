resource "dynatrace_generic_types" "network_device_4" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Network device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRmMzJmMTZjLTNkMTMtNTVkNS04YjFhLWFkNTU3NDMwOTcxMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "juniper"
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{system.name}"
      attributes {
        attribute {
          display_name = "System Contact"
          key          = "devSysContact"
          pattern      = "{system.contact}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          display_name = "Description"
          key          = "devDescription"
          pattern      = "{device.description}"
        }
        attribute {
          display_name = "Location"
          key          = "devSysLocation"
          pattern      = "{system.location}"
        }
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring.mode}"
        }
        attribute {
          display_name = "Device type"
          key          = "devType"
          pattern      = "{device.type}"
        }
        attribute {
          display_name = "Network Interface Count"
          key          = "interface_count"
          pattern      = "{if.count}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "device.type"
        }
        required_dimension {
          key = "system.name"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic)"
          source_type = "Metrics"
        }
      }
    }
  }
}
