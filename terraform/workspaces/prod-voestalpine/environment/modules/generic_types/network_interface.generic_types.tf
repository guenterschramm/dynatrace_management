resource "dynatrace_generic_types" "network_interface" {
  name         = "network:interface"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-auto-discovery 4.1.5"
  display_name = "Network interface"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDc3OWVmMWI0LTQ0ZGItNWIyZS05NjlmLTE5OGVkM2YxMGRiZr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Operational state"
          key          = "ifOperStatus"
          pattern      = "{oper.status}"
        }
        attribute {
          display_name = "Admin state"
          key          = "ifAdminStatus"
          pattern      = "{admin.status}"
        }
        attribute {
          display_name = "Bandwidth"
          key          = "ifSpeed"
          pattern      = "{if.speed}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "if.name"
        }
        required_dimension {
          key = "mac.address"
        }
        required_dimension {
          key = "oper.status"
        }
        required_dimension {
          key = "admin.status"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.network_device.if.status)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "if.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "mac.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$eq(com.dynatrace.extension.network_device.if.status)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern = "network_interface_{monitored.mac}_{monitored.interface}"
      role       = "default"
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_autodiscovery)"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Neighbor discovery)"
        }
        required_dimension {
          key = "monitored.interface"
        }
        required_dimension {
          key = "monitored.mac"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "network_interface_{neighbor.mac}_{neighbor.port.id}"
      role       = "neighbor"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{neighbor.mac}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_autodiscovery)"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Neighbor discovery)"
        }
        required_dimension {
          key           = "neighbor.mac"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "neighbor.port.id"
        }
        required_dimension {
          key           = "neighbor.porttype"
          value_pattern = "$eq(interfaceName~(5~))"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "network_interface_{neighbor.mac}_{neighbor.port.id}"
      role       = "neighbor"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{neighbor.mac}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_autodiscovery)"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Neighbor discovery)"
        }
        required_dimension {
          key           = "neighbor.mac"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "neighbor.port.id"
        }
        required_dimension {
          key           = "neighbor.porttype"
          value_pattern = "$eq(local~(7~))"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "network_interface_{neighbor.port.id}_{neighbor.if.name}"
      role       = "neighbor"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{neighbor.port.id}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_autodiscovery)"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Neighbor discovery)"
        }
        required_dimension {
          key           = "neighbor.port.id"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "neighbor.porttype"
          value_pattern = "$eq(macAddress~(3~))"
        }
        required_dimension {
          key           = "neighbor.if.name"
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
      icon_pattern          = "network-interfaces"
      id_pattern            = "network_interface_{mac.address}_{if.name}"
      instance_name_pattern = "{if.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "ifMacAddr"
          pattern      = "{mac.address}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "if.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "mac.address"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.network_device.if)"
          source_type = "Metrics"
        }
      }
    }
  }
}
