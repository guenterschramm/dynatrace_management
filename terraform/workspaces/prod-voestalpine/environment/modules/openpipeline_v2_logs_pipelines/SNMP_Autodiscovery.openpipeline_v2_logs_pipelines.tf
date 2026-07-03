resource "dynatrace_openpipeline_v2_logs_pipelines" "SNMP_Autodiscovery" {
  custom_id    = "extension:snmp-auto-discovery"
  display_name = "SNMP Autodiscovery"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-auto-discovery"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "4.1.7"
    }
  }
  processing {
    processors {
      processor {
        description = "Convert string IPs to IP addresses, on device discovery logs"
        type        = "dql"
        enabled     = true
        id          = "convert-to-ipAddress-array-device-discovery"
        matcher     =<<-EOT
          content == "Device discovery" and chassis_mac != "n/a" and isNotNull(ip)
        EOT
        dql {
          script = "fieldsAdd ip=toIp(ip[])"
        }
      }
      processor {
        description = "Convert string IPs to IP addresses, on neighbor discovery logs"
        type        = "dql"
        enabled     = true
        id          = "convert-to-ipAddress-array-neighbor-discovery"
        matcher     =<<-EOT
          content == "Neighbor discovery"  and neighbor.device.id != "n/a" and isNull(neighbor.ext_network_device) and isNotNull(neighbor.device.ip)
        EOT
        dql {
          script = "fieldsAdd neighbor.device.ip=toIp(neighbor.device.ip[])"
        }
      }
      processor {
        description = "Convert string IPs to IP addresses, on neighbor discovery logs"
        type        = "dql"
        enabled     = true
        id          = "convert-to-ipAddress-array-neighbor-discovery-base"
        matcher     =<<-EOT
          content == "Neighbor discovery" and base.device.chassis_mac != "n/a" and isNotNull(base.interface.ip)
        EOT
        dql {
          script = "fieldsAdd base.interface.ip=toIp(base.interface.ip[])"
        }
      }
    }
  }
  smartscape_edge_extraction {
    processors {
      processor {
        description = "Neighbor device calls base device (edge)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "edge-neighbor-device-calls-base-device"
        matcher     = "content == \"Neighbor discovery\""
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "neighbor.ext_network_device"
          source_type          = "EXT_NETWORK_DEVICE"
          target_id_field_name = "dt.smartscape.ext_network_device"
          target_type          = "EXT_NETWORK_DEVICE"
        }
      }
      processor {
        description = "Neighbor HOST calls base device (edge)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "edge-neighbor-host-calls-base-device"
        matcher     = "content == \"Neighbor discovery\""
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "dt.smartscape.host"
          source_type          = "HOST"
          target_id_field_name = "dt.smartscape.ext_network_device"
          target_type          = "EXT_NETWORK_DEVICE"
        }
      }
      processor {
        description = "Neighbor interface calls base interface (edge)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "edge-neighbor-interface-calls-base-interface"
        matcher     = "content == \"Neighbor discovery\""
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "neighbor.ext_network_interface"
          source_type          = "EXT_NETWORK_INTERFACE"
          target_id_field_name = "dt.smartscape.ext_network_interface"
          target_type          = "EXT_NETWORK_INTERFACE"
        }
      }
      processor {
        description = "Neighbor NETWORK_INTERFACE calls base interface (edge)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "edge-neighbor-host-interface-calls-base-interface"
        matcher     = "content == \"Neighbor discovery\""
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "dt.smartscape.network_interface"
          source_type          = "NETWORK_INTERFACE"
          target_id_field_name = "dt.smartscape.ext_network_interface"
          target_type          = "EXT_NETWORK_INTERFACE"
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Network Device upsert from Device Discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-device-discovery"
        matcher     =<<-EOT
          content == "Device discovery" and chassis_mac != "n/a"
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:device"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "snmp.ip"
              referenced_field_name = "snmp.ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_mode"
              referenced_field_name = "monitoring_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "chassis_mac"
              referenced_field_name = "chassis_mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_type"
              referenced_field_name = "device_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "autodiscovery.group_label"
              referenced_field_name = "autodiscovery.group_label"
            }
            smartscape_field_extraction_entry {
              field_name            = "autodiscovery.config_label"
              referenced_field_name = "autodiscovery.config_label"
            }
            smartscape_field_extraction_entry {
              field_name            = "autodiscovery.default_extension"
              referenced_field_name = "autodiscovery.default_extension"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "description"
            }
            smartscape_field_extraction_entry {
              field_name            = "contact"
              referenced_field_name = "contact"
            }
            smartscape_field_extraction_entry {
              field_name            = "location"
              referenced_field_name = "location"
            }
            smartscape_field_extraction_entry {
              field_name            = "snmp.sys_object_id"
              referenced_field_name = "snmp.sys_object_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "lldp.chassis_id"
              referenced_field_name = "lldp.chassis_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cdp.device_id"
              referenced_field_name = "cdp.device_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis_mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "name"
            }
          }
        }
      }
      processor {
        description = "Network Device upsert from extension labels logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-labels"
        matcher     =<<-EOT
          content == "Autodiscovery labels" and chassis_mac != "n/a"
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "autodiscovery.config_label"
              referenced_field_name = "autodiscovery.config_label"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "autodiscovery.group_label"
              referenced_field_name = "autodiscovery.group_label"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "upsert_source"
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis_mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "name"
            }
          }
        }
      }
      processor {
        description = "Network Device (base) ID extraction on Neighbor Discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-base-neighbor-discovery"
        matcher     =<<-EOT
          content == "Neighbor discovery"  and base.device.chassis_mac != "n/a"
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "base.device.chassis_mac"
            }
          }
        }
      }
      processor {
        description = "Network device (neighbor) upsert from Neighbor Discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-neighbor-u-neighbor-discovery"
        matcher     =<<-EOT
          content == "Neighbor discovery"  and neighbor.device.id != "n/a" and isNull(neighbor.ext_network_device)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "neighbor.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "neighbor.device.ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_mode"
              referenced_field_name = "neighbor.device.monitoring_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "neighbor.device.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "protocol"
              referenced_field_name = "neighbor.protocol"
            }
            smartscape_field_extraction_entry {
              field_name            = "neighbor_id"
              referenced_field_name = "neighbor.device.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "upsert_source"
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "neighbor.device.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "neighbor.device.name"
            }
          }
        }
      }
      processor {
        description = "Network interface (base) upsert from Neighbor Discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-base-u-neighbor-discovery"
        matcher     =<<-EOT
          content == "Neighbor discovery" and base.device.chassis_mac != "n/a"
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "base.device.chassis_mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "base.interface.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "base.interface.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "base.interface.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "base.interface.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "base.interface.ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
          }
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "base.interface.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "base.device.chassis_mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "base.interface.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Network interface (neighbor) upsert from Neighbor Discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-neighbor-u-neighbor-discovery"
        matcher     =<<-EOT
          content == "Neighbor discovery"  and neighbor.device.id != "n/a" and isNull(neighbor.ext_network_interface)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "neighbor.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "neighbor.interface.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "neighbor.interface.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "neighbor.interface.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
          }
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "neighbor.interface.id"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "neighbor.device.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "neighbor.interface.id"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "neighbor.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
    }
  }
}
