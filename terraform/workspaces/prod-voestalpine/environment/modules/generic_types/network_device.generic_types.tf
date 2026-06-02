resource "dynatrace_generic_types" "network_device" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-device 2.5.12"
  display_name = "Network device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDRmMzJmMTZjLTNkMTMtNTVkNS04YjFhLWFkNTU3NDMwOTcxMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "host"
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      attributes {
        attribute {
          display_name = "System Contact"
          key          = "devSysContact"
          pattern      = "{sys.contact}"
        }
        attribute {
          display_name = "Device Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Description"
          key          = "devDescription"
          pattern      = "{sys.description}"
        }
        attribute {
          display_name = "Location"
          key          = "devSysLocation"
          pattern      = "{sys.location}"
        }
        attribute {
          display_name = "Tag"
          key          = "activation_tag"
          pattern      = "{activation.tag}"
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
          display_name = "Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "Device DNS Name"
          key          = "dt.dns_names"
          pattern      = "{device.name}"
        }
        attribute {
          display_name = "Network Interface Count"
          key          = "interface_count"
          pattern      = "{if.count}"
        }
        attribute {
          display_name = "LLDP Chassis ID"
          key          = "lldpChassisId"
          pattern      = "{lldp.chassis.id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "sys.name"
        }
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "device.type"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.snmp-generic-device)"
          source_type = "Metrics"
        }
      }
    }
  }
}
