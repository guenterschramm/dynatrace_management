resource "dynatrace_openpipeline_v2_metrics_pipelines" "Generic_Device" {
  custom_id    = "extension:snmp-generic-device"
  display_name = "Generic Device"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-generic-device"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.4"
    }
  }
  processing {
    processors {
      processor {
        description = "Reshaping of fields on sysuptime metric for smartscape node field extraction"
        type        = "dql"
        enabled     = true
        id          = "reshape-sysuptime-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\""
        dql {
          script =<<-EOT
            fieldsAdd mac=array(chassis.mac), troubleshooting.upsert_source="extension:snmp-generic-device|metric:sysuptime", vendor="Generic"
          EOT
        }
      }
      processor {
        description = "Reshaping of fields on if.status metric for smartscape node field extraction"
        type        = "dql"
        enabled     = true
        id          = "reshape-if.status-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.if.status\""
        dql {
          script = "fieldsAdd troubleshooting.upsert_source=\"extension:snmp-generic-device|metric:if.status\", mac=if(isNotNull(mac.address), array(mac.address))"
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Network device upsert from sysuptime metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-sysuptime"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\" and isNotNull(sys.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:device"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "snmp.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "lldp.chassis_id"
              referenced_field_name = "lldp.chassis.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cdp.device_id"
              referenced_field_name = "cdp.device.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_mode"
              referenced_field_name = "monitoring.mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_type"
              referenced_field_name = "device.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "contact"
              referenced_field_name = "sys.contact"
            }
            smartscape_field_extraction_entry {
              field_name            = "location"
              referenced_field_name = "sys.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "sys.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "snmp.sys_object_id"
              referenced_field_name = "sys.objectid"
            }
            smartscape_field_extraction_entry {
              field_name            = "activation_tag"
              referenced_field_name = "activation.tag"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_count"
              referenced_field_name = "if.count"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "sys.name"
            }
          }
        }
      }
      processor {
        description = "Network device ID extraction on all extension metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-metrics"
        matcher     = "isNotNull(chassis.mac)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Network interface upsert from if.status metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-u-if.status"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.if.status\" and isNotNull(if.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:interface"
            }
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "if.desc"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "if.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_status"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "admin_status"
              referenced_field_name = "admin.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "speed"
              referenced_field_name = "if.speed"
            }
            smartscape_field_extraction_entry {
              field_name            = "promiscuous_mode"
              referenced_field_name = "if.promiscuousmode"
            }
            smartscape_field_extraction_entry {
              field_name            = "high_speed"
              referenced_field_name = "if.highspeed"
            }
            smartscape_field_extraction_entry {
              field_name            = "mtu"
              referenced_field_name = "if.mtu"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "if.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "if.name"
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
        description = "Network virtual interface upsert from if.status metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-virtual-interface-u-if.status"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.if.status\" and isNotNull(interface.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:interface"
            }
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "if.desc"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "if.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_status"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "admin_status"
              referenced_field_name = "admin.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "speed"
              referenced_field_name = "if.speed"
            }
            smartscape_field_extraction_entry {
              field_name            = "promiscuous_mode"
              referenced_field_name = "if.promiscuousmode"
            }
            smartscape_field_extraction_entry {
              field_name            = "high_speed"
              referenced_field_name = "if.highspeed"
            }
            smartscape_field_extraction_entry {
              field_name            = "mtu"
              referenced_field_name = "if.mtu"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "interface.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "interface.name"
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
        description = "Network Interface ID extraction on all interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-metrics"
        matcher     =<<-EOT
          (matchesValue(metric.key, "com.dynatrace.extension.snmp-generic-device.if.*") or matchesValue(metric.key, "com.dynatrace.extension.network_device.if.*")) and isNotNull(if.name)
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "if.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Network Interface ID extraction on all interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-virtual-interface-metrics"
        matcher     =<<-EOT
          (matchesValue(metric.key, "com.dynatrace.extension.snmp-generic-device.if.*") or matchesValue(metric.key, "com.dynatrace.extension.network_device.if.*")) and isNotNull(interface.name)
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "interface.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
    }
  }
}
