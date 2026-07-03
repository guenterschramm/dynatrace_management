resource "dynatrace_generic_types" "network_port" {
  name         = "network:port"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  display_name = "Network port"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDhlOTM0OTgwLWMwYTgtNWQwMy05NzQyLWUxNzMzOGM1ZjE4OL7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "applicationnetworkmonitoring"
      id_pattern            = "network_port_{mac.address}"
      instance_name_pattern = "{mac.address}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "macAddress"
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
    rule {
      id_pattern            = "network_port_{monitored.mac}"
      instance_name_pattern = "{monitored.mac}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "macAddress"
          pattern      = "{monitored.mac}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
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
      id_pattern            = "network_port_{neighbor.port.id}"
      instance_name_pattern = "{neighbor.port.id}"
      role                  = "neighbor"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "macAddress"
          pattern      = "{neighbor.port.id}"
        }
        attribute {
          display_name = "ChassisId"
          key          = "hostChassisId"
          pattern      = "{neighbor.chassis.id}"
        }
        attribute {
          key     = "hostSysName"
          pattern = "{neighbor.sys.name}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
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
          key = "neighbor.port.id"
        }
        required_dimension {
          key           = "neighbor.porttype"
          value_pattern = "$eq(macAddress~(3~))"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern            = "network_port_{neighbor.mac}"
      instance_name_pattern = "{neighbor.mac}"
      role                  = "neighbor"
      attributes {
        attribute {
          display_name = "MAC Address"
          key          = "macAddress"
          pattern      = "{neighbor.mac}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
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
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
  }
}
