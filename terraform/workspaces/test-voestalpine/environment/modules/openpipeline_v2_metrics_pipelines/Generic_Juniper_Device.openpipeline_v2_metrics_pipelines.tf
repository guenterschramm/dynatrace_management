resource "dynatrace_openpipeline_v2_metrics_pipelines" "Generic_Juniper_Device" {
  custom_id    = "extension:snmp-generic-juniper"
  display_name = "Generic Juniper Device"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.snmp-generic-juniper"
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
            fieldsAdd mac=array(chassis.mac), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:sysuptime", vendor="Juniper"
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
          script = "fieldsAdd mac=if(isNotNull(mac.address), array(mac.address)), troubleshooting.upsert_source=\"extension:snmp-generic-juniper|metric:if.status\""
        }
      }
      processor {
        description = "Reshape the routing engine state metrics for extracting routing engine fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-routing_engine.state-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.routingengine.state\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(routingengine.descr, " @ ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:routingengine.state"
          EOT
        }
      }
      processor {
        description = "Reshape the disk metrics for extracting disk fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-disk.storage.size-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.storage.size\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(storage.descr, " on ", device.address),troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:storage.size"
          EOT
        }
      }
      processor {
        description = "Reshape the FRU state metrics for extracting FRU fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-fru.state-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.fru.state\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(fru.name, " @ ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:fru.state"
          EOT
        }
      }
      processor {
        description = "Reshape the app installed entity metrics for extracting app fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-app.installed.entity-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.app.installed.entity\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(app.name, " installed on ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:app.installed.entity"
          EOT
        }
      }
      processor {
        description = "Reshape the app running entity metrics for extracting app fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-app.running.cpu.count"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.app.running.cpu.count\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(app.name, " running on ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:app.running.cpu.cpunt"
          EOT
        }
      }
      processor {
        description = "Reshape the vlan entity metrics for extracting vlan fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-vlan.entity-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.vlan\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(vlan.name, " on ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:vlan"
          EOT
        }
      }
      processor {
        description = "Reshape the ex-vlan entity metrics for extracting vlan fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-vlan.ex-entity-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.ex.vlan\""
        dql {
          script =<<-EOT
            fieldsAdd smartscape_node.name=concat(ex.vlan.name, " on ", device.address), troubleshooting.upsert_source="extension:snmp-generic-juniper|metric:ex.vlan"
          EOT
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
              referenced_field_name = "system.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "device.description"
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
              referenced_field_name = "if.descr"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_index"
              referenced_field_name = "if.idx"
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
        description = "Network Interface ID extraction on all interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-metrics"
        matcher     =<<-EOT
          isNotNull(if.name) and (matchesValue(metric.key, "com.dynatrace.extension.juniper.generic.if.*") or matchesValue(metric.key, "com.dynatrace.extension.network_device.if.*"))
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
        description = "Virtual network interface upsert from if.status metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-virtual-u-if.status"
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
              referenced_field_name = "if.descr"
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
        id          = "virtual-network-interface-metrics"
        matcher     =<<-EOT
          isNotNull(interface.name) and (matchesValue(metric.key, "com.dynatrace.extension.juniper.generic.if.*") or matchesValue(metric.key, "com.dynatrace.extension.network_device.if.*"))
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
      processor {
        description = "Routing Engine upsert from routingengine.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-routing_engine-u-state"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.routingengine.state\" and isNotNull(routingengine.descr)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_routing_engine"
          node_type          = "JUNIPER_ROUTING_ENGINE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_routingengine"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "routingengine.descr"
            }
            smartscape_field_extraction_entry {
              field_name            = "installed_memory"
              referenced_field_name = "routingengine.installed.memory"
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
              referenced_field_name = "routingengine.descr"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Routing Engine ID extraction on all routing engine metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "routing-engine-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.juniper.generic.routingengine.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.juniper_routing_engine"
          node_type          = "JUNIPER_ROUTING_ENGINE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "routingengine.descr"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Disk upsert from disk.storage.size metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-disk-u-entity"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.storage.size\" and isNotNull(storage.index)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_disk"
          node_type          = "JUNIPER_DISK"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_disk"
            }
            smartscape_field_extraction_entry {
              field_name            = "index"
              referenced_field_name = "storage.index"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "storage.descr"
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
              id_component          = "index"
              referenced_field_name = "storage.index"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "is_part_of"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Disk ID extraction on all disk metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "disk-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.juniper.generic.device.storage.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.juniper_disk"
          node_type          = "JUNIPER_DISK"
          id_components {
            id_component {
              id_component          = "storage.index"
              referenced_field_name = "index"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "FRU upsert from fru.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-fru-u-state"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.fru.state\" and isNotNull(contents.index) and isNotNull(l.one.index) and isNotNull(l.two.index) and isNotNull(l.three.index)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_fru"
          node_type          = "JUNIPER_FRU"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_fru"
            }
            smartscape_field_extraction_entry {
              field_name            = "fru_name"
              referenced_field_name = "fru.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "fru_type"
              referenced_field_name = "fru.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "content_index"
              referenced_field_name = "contents.index"
            }
            smartscape_field_extraction_entry {
              field_name            = "l_one_index"
              referenced_field_name = "l.one.index"
            }
            smartscape_field_extraction_entry {
              field_name            = "l_two_index"
              referenced_field_name = "l.two.index"
            }
            smartscape_field_extraction_entry {
              field_name            = "l_three_index"
              referenced_field_name = "l.three.index"
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
              id_component          = "content_index"
              referenced_field_name = "contents.index"
            }
            id_component {
              id_component          = "l1_index"
              referenced_field_name = "l.one.index"
            }
            id_component {
              id_component          = "l2_index"
              referenced_field_name = "l.two.index"
            }
            id_component {
              id_component          = "l3_index"
              referenced_field_name = "l.three.index"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "FRU ID extraction on all FRU metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "fru-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.juniper.generic.device.fru.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.juniper_fru"
          node_type          = "JUNIPER_FRU"
          id_components {
            id_component {
              id_component          = "content_index"
              referenced_field_name = "contents.index"
            }
            id_component {
              id_component          = "l1_index"
              referenced_field_name = "l.one.index"
            }
            id_component {
              id_component          = "l2_index"
              referenced_field_name = "l.two.index"
            }
            id_component {
              id_component          = "l3_index"
              referenced_field_name = "l.three.index"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Installed App upsert from installed_app.entity metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-installed_app-u-entity"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.app.installed.entity\" and isNotNull(app.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_installed_app"
          node_type          = "JUNIPER_INSTALLED_APP"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app"
            }
            smartscape_field_extraction_entry {
              field_name            = "app_name"
              referenced_field_name = "app.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "app_type"
              referenced_field_name = "app.type"
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
              referenced_field_name = "app.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "is_part_of"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Installed App ID extraction on all Installed App metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "installed-app-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.juniper.generic.app.installed.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.juniper_installed_app"
          node_type          = "JUNIPER_INSTALLED_APP"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "app.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Running App upsert from running_app.cpu.count metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-running_app-u-cpu_count"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.app.running.cpu.count\" and isNotNull(app.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_running_app"
          node_type          = "JUNIPER_RUNNING_APP"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_installed_app"
            }
            smartscape_field_extraction_entry {
              field_name            = "app_name"
              referenced_field_name = "app.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "app_user"
              referenced_field_name = "app.user"
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
              referenced_field_name = "app.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Running App ID extraction on all Running App metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "running-app-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.juniper.generic.app.running.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.juniper_running_app"
          node_type          = "JUNIPER_RUNNING_APP"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "app.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "VLAN upsert from vlan.metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-vlan-u-entity"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.vlan\" and isNotNull(vlan.id)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_vlan"
          node_type          = "JUNIPER_VLAN"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_vlan"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_name"
              referenced_field_name = "vlan.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_type"
              referenced_field_name = "vlan.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_portgroup_instance"
              referenced_field_name = "vlan.portgroup.instance"
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
              referenced_field_name = "vlan.id"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "VLAN upsert from ex-vlan.metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "juniper-ex-vlan-u-entity"
        matcher     = "metric.key == \"com.dynatrace.extension.juniper.generic.device.ex.vlan\" and isNotNull(ex.vlan.id)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.juniper_vlan"
          node_type          = "JUNIPER_VLAN"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.snmp:com_dynatrace_extension_snmp_generic_juniper_vlan"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_name"
              referenced_field_name = "ex.vlan.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_type"
              referenced_field_name = "ex.vlan.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_portgroup_instance"
              referenced_field_name = "ex.vlan.portgroup.instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vlan_tag"
              referenced_field_name = "ex.vlan.tag"
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
              referenced_field_name = "ex.vlan.id"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
    }
  }
}
