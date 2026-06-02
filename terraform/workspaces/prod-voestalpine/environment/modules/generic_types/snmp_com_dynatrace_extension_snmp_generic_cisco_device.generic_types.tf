resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_cisco_device" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-cisco-device 3.4.10"
  display_name = "Generic SNMP Cisco Device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGY1YjNjNDM5LWNmNjUtNTI0NS1iZGU0LWE5OTIwN2YyMjkxNb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp_generic_cisco_device_{device.address}"
      instance_name_pattern = "Cisco network device {sys.name} @ {device.address}:{device.port}"
      attributes {
        attribute {
          display_name = "Description"
          key          = "system_descr"
          pattern      = "{sys.description}"
        }
        attribute {
          display_name = "Location"
          key          = "system_location"
          pattern      = "{sys.location}"
        }
        attribute {
          display_name = "Network Interface Count"
          key          = "interface_count"
          pattern      = "{if.count}"
        }
        attribute {
          display_name = "Software Revision"
          key          = "softwareRevision"
          pattern      = "{software_revision}"
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
          key           = "device.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
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
      id_pattern            = "snmp_generic_cisco_device_{device.address}"
      instance_name_pattern = "Cisco network device {sys.name} @ {device.address}:{device.port}"
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
      }
      required_dimensions {
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.port"
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
      id_pattern            = "snmp_generic_cisco_device_{device.address}"
      instance_name_pattern = "Cisco network device {sys.name} @ {device.address}:{device.port}"
      attributes {
        attribute {
          display_name = "System Contact"
          key          = "system_contact"
          pattern      = "{sys.contact}"
        }
        attribute {
          display_name = "Device Name"
          key          = "system_name"
          pattern      = "{sys.name}"
        }
        attribute {
          display_name = "Device Address"
          key          = "dt.ip_addresses"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Device Port"
          key          = "dt.listen_ports"
          pattern      = "{device.port}"
        }
        attribute {
          display_name = "Device DNS Name"
          key          = "dt.dns_names"
          pattern      = "{device.name}"
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
          key           = "device.port"
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
