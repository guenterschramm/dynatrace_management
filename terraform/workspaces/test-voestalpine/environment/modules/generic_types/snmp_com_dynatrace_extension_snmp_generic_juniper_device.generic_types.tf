resource "dynatrace_generic_types" "snmp_com_dynatrace_extension_snmp_generic_juniper_device" {
  name         = "snmp:com_dynatrace_extension_snmp_generic_juniper_device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-generic-juniper 3.0.4"
  display_name = "Generic Juniper SNMP Device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDllYTY3Nzk1LTJiOTktNWJiMC04ZDAyLTAwMTFjNGMxNGZiZb7vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "snmp_generic_juniper_device_{device.address}"
      instance_name_pattern = "Juniper network device {system.name} @ {device.address}:{device.port}"
      attributes {
        attribute {
          display_name = "System Contact"
          key          = "system_contact"
          pattern      = "{system.contact}"
        }
        attribute {
          display_name = "Device Name"
          key          = "system_name"
          pattern      = "{system.name}"
        }
        attribute {
          display_name = "Device Address"
          key          = "system_ip"
          pattern      = "{device.address}"
        }
        attribute {
          display_name = "Description"
          key          = "system_descr"
          pattern      = "{device.description}"
        }
        attribute {
          display_name = "Location"
          key          = "system_location"
          pattern      = "{system.location}"
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
          key           = "system.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.port"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.juniper.generic)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "snmp_generic_juniper_device_{device.address}"
      instance_name_pattern = "Juniper network device {system.name} @ {device.address}:{device.port}"
      required_dimensions {
        required_dimension {
          key           = "device.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "system.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "device.port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dt.metrics.source"
          value_pattern = "$eq(com.dynatrace.extension.snmp-generic-juniper)"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.network_device.sysuptime)"
          source_type = "Metrics"
        }
      }
    }
  }
}
