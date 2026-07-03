resource "dynatrace_generic_types" "network_device_2" {
  name         = "network:device"
  enabled      = true
  created_by   = "com.dynatrace.extension.snmp-auto-discovery 4.1.7"
  display_name = "Network device"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDY3Y2NkODhkLWUyNmYtNTRiYS1hYzcyLTcxZjExMjI5YjlmMr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "no-host"
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
        }
        attribute {
          key     = "dt.dns_names"
          pattern = "{sys.name}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
        attribute {
          display_name = "Network segment"
          key          = "extCfgGroupLabel"
          pattern      = "{group.label}"
        }
        attribute {
          display_name = "Configuration label"
          key          = "extCfgLabel"
          pattern      = "{config.label}"
        }
        attribute {
          display_name = "Device type"
          key          = "devType"
          pattern      = "{device.type}"
        }
        attribute {
          display_name = "Recommended extension"
          key          = "extDefaultExtension"
          pattern      = "{recommended.extension}"
        }
        attribute {
          display_name = "Description"
          key          = "devDescription"
          pattern      = "{sys.descr}"
        }
        attribute {
          display_name = "Contact"
          key          = "devSysContact"
          pattern      = "{sys.contact}"
        }
        attribute {
          display_name = "Location"
          key          = "devSysLocation"
          pattern      = "{sys.location}"
        }
        attribute {
          display_name = "Object ID"
          key          = "devSysObjectId"
          pattern      = "{sys.object.id}"
        }
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring.mode}"
        }
        attribute {
          display_name = "LLDP Chassis ID"
          key          = "lldpChassisId"
          pattern      = "{lldp.chassis.id}"
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
          key = "device.type"
        }
        required_dimension {
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "device.address"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      icon_pattern          = "no-host"
      id_pattern            = "network_device_{snmp.ip}"
      instance_name_pattern = "{name}"
      role                  = "default"
      attributes {
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{snmp.ip}"
        }
        attribute {
          key     = "dt.security_context"
          pattern = "{dt.security_context}"
        }
        attribute {
          display_name = "Network segment"
          key          = "extCfgGroupLabel"
          pattern      = "{autodiscovery.group_label}"
        }
        attribute {
          display_name = "Configuration label"
          key          = "extCfgLabel"
          pattern      = "{autodiscovery.config_label}"
        }
        attribute {
          display_name = "Device type"
          key          = "devType"
          pattern      = "{device_type}"
        }
        attribute {
          display_name = "Recommended extension"
          key          = "extDefaultExtension"
          pattern      = "{autodiscovery.default_extension}"
        }
        attribute {
          display_name = "Description"
          key          = "devDescription"
          pattern      = "{description}"
        }
        attribute {
          display_name = "Contact"
          key          = "devSysContact"
          pattern      = "{contact}"
        }
        attribute {
          display_name = "Location"
          key          = "devSysLocation"
          pattern      = "{location}"
        }
        attribute {
          display_name = "Object ID"
          key          = "devSysObjectId"
          pattern      = "{snmp.sys_object_id}"
        }
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring_mode}"
        }
        attribute {
          display_name = "LLDP Chassis ID"
          key          = "lldpChassisId"
          pattern      = "{lldp.chassis_id}"
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
          key           = "device_type"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "snmp.ip"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "name"
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
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{device.name}"
      attributes {
        attribute {
          display_name = "Network segment"
          key          = "extCfgGroupLabel"
          pattern      = "{group.label}"
        }
        attribute {
          display_name = "Configuration label"
          key          = "extCfgLabel"
          pattern      = "{config.label}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "device.address"
        }
        required_dimension {
          key = "group.label"
        }
        required_dimension {
          key = "config.label"
        }
        required_dimension {
          key = "device.name"
        }
        required_dimension {
          key           = "content"
          value_pattern = "$eq(Autodiscovery labels)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(snmp_auto_discovery_config)"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "network_device_{monitored.address}"
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
          key = "monitored.address"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{neighbor.address}"
      instance_name_pattern = "{neighbor.sys.name}"
      role                  = "neighbor"
      attributes {
        attribute {
          display_name = "LLDP Chassis ID"
          key          = "lldpChassisId"
          pattern      = "{neighbor.chassis.id}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{neighbor.address}"
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
          key           = "neighbor.address"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "neighbor.sys.name"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring.mode}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.dns_names"
          pattern = "{device.name}"
        }
        attribute {
          display_name = "Device type"
          key          = "devType"
          pattern      = "{device.type}"
        }
        attribute {
          display_name = "Description"
          key          = "devDescription"
          pattern      = "{sys.description}"
        }
        attribute {
          key     = "dt.listen_ports"
          pattern = "{device.port}"
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
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "monitoring.mode"
        }
        required_dimension {
          key = "device.type"
        }
        required_dimension {
          key = "sys.description"
        }
        required_dimension {
          key = "device.port"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.network_device)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern            = "network_device_{device.address}"
      instance_name_pattern = "{sys.name}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Monitoring mode"
          key          = "devMonitoringMode"
          pattern      = "{monitoring.mode}"
        }
        attribute {
          key     = "dt.ip_addresses"
          pattern = "{device.address}"
        }
        attribute {
          key     = "dt.dns_names"
          pattern = "{device.name}"
        }
        attribute {
          display_name = "Device type"
          key          = "devType"
          pattern      = "{device.type}"
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
          key           = "sys.name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key = "monitoring.mode"
        }
        required_dimension {
          key = "device.type"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.network_device)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      id_pattern = "network_device_{device.address}"
      attributes {
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
          key           = "sys.name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(com.dynatrace.extension.network_device)"
          source_type = "Metrics"
        }
      }
    }
  }
}
