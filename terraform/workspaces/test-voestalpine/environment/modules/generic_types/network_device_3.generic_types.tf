resource "dynatrace_generic_types" "network_device_3" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-cisco-device 4.0.8"
  display_name = "Network device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDQxMjE0MDdmLTdlYTEtNTI1YS04YWQ3LTk2OGNjMmQ0ZTdmOL7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      attributes {
        attribute {
          display_name = "IP Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Listen Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "DNS Names"
          key          = "dt.dns_names"
          pattern      = "{device.name}"
        }
        attribute {
          display_name = "Device Type"
          key          = "devType"
          pattern      = "{device.type}"
        }
        attribute {
          display_name = "Monitoring Mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring.mode}"
        }
        attribute {
          display_name = "LLDP Chassis ID"
          key          = "lldpChassisId"
          pattern      = "{lldp.chassis.id}"
        }
        attribute {
          display_name = "Contact"
          key          = "devSysContact"
          pattern      = "{sys.contact}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device.name"
        }
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "device.type"
        }
        required_dimension {
          key = "lldp.chassis.id"
        }
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.snmp-generic-cisco-device.sys.uptime)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      attributes {
        attribute {
          display_name = "DNS Names"
          key          = "dt.dns_names"
          pattern      = "{sys.name}"
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
          display_name = "Object ID"
          key          = "devObjectId"
          pattern      = "{sys.objectid}"
        }
        attribute {
          display_name = "Services"
          key          = "services"
          pattern      = "{sys.services}"
        }
        attribute {
          display_name = "Interface Count"
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
          key = "sys.name"
        }
        required_dimension {
          key = "sys.description"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.snmp-generic-cisco-device.entity_attributes)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      attributes {
        attribute {
          display_name = "Stack serial number"
          key          = "stackSerialNumber"
          pattern      = "{component.serial_number}"
        }
        attribute {
          display_name = "Stack model name"
          key          = "stackModelName"
          pattern      = "{component.model_name}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.snmp-generic-cisco-device.component.state)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      attributes {
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.snmp-generic-cisco-device)"
          source_type = "Metrics"
        }
      }
    }
  }
}
