resource "dynatrace_openpipeline_v2_metrics_pipelines" "F5_BIG-IP_LTM_DNS" {
  custom_id    = "extension:f5.bigip"
  display_name = "F5 BIG-IP LTM & DNS"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.f5.bigip"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.6"
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
            fieldsAdd mac=array(chassis.mac), troubleshooting.upsert_source="extension:f5.bigip|metric:sysuptime", vendor="F5"
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
          script = "fieldsAdd mac=if(isNotNull(mac.address), array(mac.address)), troubleshooting.upsert_source=\"extension:f5.bigip|metric:if.status\""
        }
      }
      processor {
        description = "Reshape the monitor.status and pool_member.state metrics for extracting pool member fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-pool-member-upsert-metrics"
        matcher     =<<-EOT
          metric.key == "com.dynatrace.extension.f5.bigip.pool_member.monitor.status" or metric.key == "com.dynatrace.extension.f5.bigip.pool_member.state"
        EOT
        dql {
          script = "fieldsAdd smartscape_node.name=concat(pool_member.name, \":\", pool_member.port), ip=array(toIp(pool_member.addr)), port=array(toLong(pool_member.port))"
        }
      }
      processor {
        description = "Reshape the virtualserver.state metric for extracting smartscape node fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-ltm-virtualserver-state-metric"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.virtualserver.state\""
        dql {
          script = "fieldsAdd ip=array(toIp(virtualserver.addr)), port=array(toLong(virtualserver.port))"
        }
      }
      processor {
        description = "Reshape the gtm.virtualserver.state metric for extracting smartscape node fields"
        type        = "dql"
        enabled     = true
        id          = "reshape-dns-virtualserver-state-metric"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.virtualserver.state\""
        dql {
          script =<<-EOT
            fieldsAdd ip=array(toIp(virtualserver.addr)), port=array(toLong(virtualserver.port)), smartscape_node.name=concat(server.name, " (", virtualserver.name, ")")
          EOT
        }
      }
    }
  }
  smartscape_edge_extraction {
    processors {
      processor {
        description = "F5 LTM Pool Member is part of LTM Pool (based on Pool Member metrics)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "f5-ltm-pool-member-part-of-pool"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.pool_member.*\")"
        smartscape_edge {
          edge_type            = "is_part_of"
          source_id_field_name = "dt.smartscape.f5_ltm_pool_member"
          source_type          = "F5_LTM_POOL_MEMBER"
          target_id_field_name = "dt.smartscape.f5_ltm_pool"
          target_type          = "F5_LTM_POOL"
        }
      }
      processor {
        description = "F5 LTM Virtual Server uses LTM Pool (based virtualserver.state metric)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "f5-ltm-virtualserver-uses-pool"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.virtualserver.state\""
        smartscape_edge {
          edge_type            = "uses"
          source_id_field_name = "dt.smartscape.f5_ltm_virtual_server"
          source_type          = "F5_LTM_VIRTUAL_SERVER"
          target_id_field_name = "dt.smartscape.f5_ltm_pool"
          target_type          = "F5_LTM_POOL"
        }
      }
      processor {
        description = "F5 DNS Wide IP uses DNS Pool (based on wip.pool_link metric)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "f5-dns-wip-uses-pool"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.wip.pool_link\""
        smartscape_edge {
          edge_type            = "uses"
          source_id_field_name = "dt.smartscape.f5_dns_wide_ip"
          source_type          = "F5_DNS_WIDE_IP"
          target_id_field_name = "dt.smartscape.f5_dns_pool"
          target_type          = "F5_DNS_POOL"
        }
      }
      processor {
        description = "F5 DNS Virtual Server is part of DNS Pool (based on gtm.pool_member metric)"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "f5-dns-virtualserver-part-of-pool"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.pool_member\""
        smartscape_edge {
          edge_type            = "is_part_of"
          source_id_field_name = "dt.smartscape.f5_dns_virtual_server"
          source_type          = "F5_DNS_VIRTUAL_SERVER"
          target_id_field_name = "dt.smartscape.f5_dns_pool"
          target_type          = "F5_DNS_POOL"
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
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
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
              field_name            = "description"
              referenced_field_name = "sys.description"
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
              field_name            = "vendor"
              referenced_field_name = "vendor"
            }
            smartscape_field_extraction_entry {
              field_name            = "snmp.sys_object_id"
              referenced_field_name = "sys.object.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.name"
              referenced_field_name = "instance.systemname"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.release"
              referenced_field_name = "instance.systemrelease"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.architecture"
              referenced_field_name = "instance.systemarch"
            }
            smartscape_field_extraction_entry {
              field_name            = "product_version"
              referenced_field_name = "instance.productversion"
            }
            smartscape_field_extraction_entry {
              field_name            = "sync.status"
              referenced_field_name = "sync.state"
            }
            smartscape_field_extraction_entry {
              field_name            = "failover.status"
              referenced_field_name = "failover.state"
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
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
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
              source_field_name = "instance.name"
            }
          }
        }
      }
      processor {
        description = "Network device enrichment with AWS fields from sysuptime metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-sysuptime-aws"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\" and (isNotNull(aws.account.id) or isNotNull(aws.region))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
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
              source_field_name = "instance.name"
            }
          }
        }
      }
      processor {
        description = "Network device enrichment with Azure fields from sysuptime metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-sysuptime-azure"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\" and (isNotNull(azure.subscription) or isNotNull(azure.location) or isNotNull(azure.resource.group))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
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
              source_field_name = "instance.name"
            }
          }
        }
      }
      processor {
        description = "Network device enrichment with GCP fields from sysuptime metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-device-u-sysuptime-gcp"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.sysuptime\" and (isNotNull(gcp.project.id) or isNotNull(gcp.region))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
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
              source_field_name = "instance.name"
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
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:interface"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "if.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "if.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "admin_status"
              referenced_field_name = "admin.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_status"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "speed"
              referenced_field_name = "if.speed"
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
        description = "Network interface ID extraction on all interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "network-interface-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.network_device.if.*\") and isNotNull(if.name)"
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
        id          = "virtual-network-interface-u-if.status"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.if.status\" and isNotNull(interface.name)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:interface"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "if.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "if.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "admin_status"
              referenced_field_name = "admin.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_status"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "speed"
              referenced_field_name = "if.speed"
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
        description = "Virtual Network interface ID extraction on all interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "virtual-network-interface-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.network_device.if.*\") and isNotNull(interface.name)"
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
        description = "Disk upsert on disk.total.blocks metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "disk-u-disk-total.blocks"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.sys.host.disk.total.blocks\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_disk"
          node_type          = "EXT_DISK"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:disk"
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
              referenced_field_name = "disk.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "disk.name"
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
        description = "Disk ID extraction on all disk metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "disk-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.sys.host.disk.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_disk"
          node_type          = "EXT_DISK"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "disk.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "F5 Pool upsert from pool.member.cnt metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-u-pool.member.cnt"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.pool.member.cnt\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_pool"
          node_type          = "F5_LTM_POOL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:pool"
            }
            smartscape_field_extraction_entry {
              field_name            = "lb_mode"
              referenced_field_name = "pool.lbmode"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitor_rule"
              referenced_field_name = "pool.monitorrule"
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
              referenced_field_name = "pool.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "pool.name"
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
        description = "F5 Pool upsert from pool.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-u-pool.state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.pool.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_pool"
          node_type          = "F5_LTM_POOL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:pool"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "pool.availstate"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "pool.enablestate"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "pool.statedetail"
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
              referenced_field_name = "pool.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "pool.name"
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
        description = "F5 Pool ID extraction on all pool, pool member, and the virtualserver.state metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-metrics"
        matcher     =<<-EOT
          matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.pool.*") or matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.pool_member.*") or metric.key == "com.dynatrace.extension.f5.bigip.virtualserver.state"
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_ltm_pool"
          node_type          = "F5_LTM_POOL"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "pool.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "F5 Pool Member upsert from pool_member.monitor.status metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-member-u-monitor.status"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.pool_member.monitor.status\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_pool_member"
          node_type          = "F5_LTM_POOL_MEMBER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:pool:member"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "ratio"
              referenced_field_name = "pool_member.ratio"
            }
            smartscape_field_extraction_entry {
              field_name            = "weight"
              referenced_field_name = "pool_member.weight"
            }
            smartscape_field_extraction_entry {
              field_name            = "priority"
              referenced_field_name = "pool_member.priority"
            }
            smartscape_field_extraction_entry {
              field_name            = "dynamic_ratio"
              referenced_field_name = "pool_member.dynamicratio"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitor_status"
              referenced_field_name = "pool_member.monitor_status"
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
              id_component          = "address"
              referenced_field_name = "pool_member.addr"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "pool_member.port"
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
        description = "F5 Pool Member upsert from pool_member.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-member-u-state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.pool_member.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_pool_member"
          node_type          = "F5_LTM_POOL_MEMBER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:pool:member"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "pool_member.availstate"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "pool_member.enablestate"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "pool_member.statedetail"
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
              id_component          = "address"
              referenced_field_name = "pool_member.addr"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "pool_member.port"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "smartscape_node.name"
            }
          }
        }
      }
      processor {
        description = "F5 Pool Member ID extraction on all pool member metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-pool-member-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.pool_member.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_ltm_pool_member"
          node_type          = "F5_LTM_POOL_MEMBER"
          id_components {
            id_component {
              id_component          = "address"
              referenced_field_name = "pool_member.addr"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "pool_member.port"
            }
          }
        }
      }
      processor {
        description = "F5 Virtual Server upsert from virtualserver.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-virtualserver-u-state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.virtualserver.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_virtual_server"
          node_type          = "F5_LTM_VIRTUAL_SERVER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:virtualserver"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled"
              referenced_field_name = "virtualserver.enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "virtualserver.enablestate"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "virtualserver.availstate"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "virtualserver.statedetail"
            }
            smartscape_field_extraction_entry {
              field_name            = "virtualserver_type"
              referenced_field_name = "virtualserver.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "snat.type"
              referenced_field_name = "virtualserver.snat.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "snat.pool"
              referenced_field_name = "virtualserver.snatpool.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "default_pool"
              referenced_field_name = "pool.name"
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
              id_component          = "address"
              referenced_field_name = "virtualserver.addr"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "virtualserver.port"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "virtualserver.name"
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
        description = "F5 Virtual Server ID extraction on all virtual server metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-virtualserver-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.virtualserver.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_ltm_virtual_server"
          node_type          = "F5_LTM_VIRTUAL_SERVER"
          id_components {
            id_component {
              id_component          = "address"
              referenced_field_name = "virtualserver.addr"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "virtualserver.port"
            }
          }
        }
      }
      processor {
        description = "LTM Profile upsert from profile metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-profile-u-metrics"
        matcher     =<<-EOT
          metric.key == "com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.tot.compat.conns.count" or metric.key == "com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.tot.compat.conns.count" or metric.key == "com.dynatrace.extension.f5.bigip.profile.http.stat.get.reqs.count"
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_ltm_profile"
          node_type          = "F5_LTM_PROFILE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:profile"
            }
            smartscape_field_extraction_entry {
              field_name            = "profile_type"
              referenced_field_name = "profile.type"
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
              referenced_field_name = "profile.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "profile.name"
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
        description = "LTM Profile ID extraction on all profile metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-ltm-profile-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.profile.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_ltm_profile"
          node_type          = "F5_LTM_PROFILE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "profile.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "F5 iRule upsert from executions.count metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-irule-u-executions.count"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.rule.event.stat.total.executions.count\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_rule"
          node_type          = "F5_RULE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:rule"
            }
            smartscape_field_extraction_entry {
              field_name            = "module"
              referenced_field_name = "module"
            }
            smartscape_field_extraction_entry {
              field_name            = "rule_event.type"
              referenced_field_name = "rule.event.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "rule_event.priority"
              referenced_field_name = "rule.event.priority"
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
              referenced_field_name = "rule.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "rule.name"
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
        description = "F5 iRule ID extraction on rule metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-irule-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.rule.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_rule"
          node_type          = "F5_RULE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "rule.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "F5 DNS Wide IP upsert from wip.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-wip-u-wip.state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.wip.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_dns_wide_ip"
          node_type          = "F5_DNS_WIDE_IP"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:gtm:wip"
            }
            smartscape_field_extraction_entry {
              field_name            = "wide_ip_type"
              referenced_field_name = "wip.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "lb_mode"
              referenced_field_name = "wip.lbmode"
            }
            smartscape_field_extraction_entry {
              field_name            = "last_resort_pool"
              referenced_field_name = "wip.last_resort"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "wip.available"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "wip.enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "wip.state_detail"
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
              referenced_field_name = "wip.name"
            }
            id_component {
              id_component          = "type"
              referenced_field_name = "wip.type"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "wip.name"
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
        description = "F5 DNS Wide IP ID extraction on all wip metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-wip-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.gtm.wip.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_dns_wide_ip"
          node_type          = "F5_DNS_WIDE_IP"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "wip.name"
            }
            id_component {
              id_component          = "type"
              referenced_field_name = "wip.type"
            }
          }
        }
      }
      processor {
        description = "F5 DNS Pool upsert from pool.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-pool-u-pool.state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.pool.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_dns_pool"
          node_type          = "F5_DNS_POOL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:gtm:pool"
            }
            smartscape_field_extraction_entry {
              field_name            = "pool_type"
              referenced_field_name = "pool.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "lb_mode"
              referenced_field_name = "pool.lb_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "lb_mode.alternative"
              referenced_field_name = "pool.lb_alternate"
            }
            smartscape_field_extraction_entry {
              field_name            = "lb_mode.fallback"
              referenced_field_name = "pool.lb_fallback"
            }
            smartscape_field_extraction_entry {
              field_name            = "fallback_ip"
              referenced_field_name = "pool.fallback_ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "pool.available"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "pool.enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "pool.state_detail"
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
              referenced_field_name = "pool.name"
            }
            id_component {
              id_component          = "type"
              referenced_field_name = "pool.type"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "pool.name"
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
        description = "F5 DNS Pool ID extraction on wip.pool_link, all pool and pool_member metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-pool-metrics"
        matcher     =<<-EOT
          metric.key == "com.dynatrace.extension.f5.bigip.gtm.pool_link" or matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.gtm.pool.*") or matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.gtm.pool_member.*")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_dns_pool"
          node_type          = "F5_DNS_POOL"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "pool.name"
            }
            id_component {
              id_component          = "type"
              referenced_field_name = "pool.type"
            }
          }
        }
      }
      processor {
        description = "F5 DNS Virtual Server upsert from virtualserver.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-virtualserver-u-state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.virtualserver.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_dns_virtual_server"
          node_type          = "F5_DNS_VIRTUAL_SERVER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:gtm:virtualserver"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "ip"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "enabled_state"
              referenced_field_name = "vs.enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_state"
              referenced_field_name = "vs.available"
            }
            smartscape_field_extraction_entry {
              field_name            = "state_detail"
              referenced_field_name = "vs.state_detail"
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
              referenced_field_name = "virtualserver.name"
            }
            id_component {
              id_component          = "server"
              referenced_field_name = "server.name"
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
        description = "F5 DNS Virtual Server ID extraction on virtualserver and pool_member metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-virtualserver-metrics"
        matcher     =<<-EOT
          matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.gtm.pool_member.*") or matchesValue(metric.key, "com.dynatrace.extension.f5.bigip.gtm.virtualserver.*")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_dns_virtual_server"
          node_type          = "F5_DNS_VIRTUAL_SERVER"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "virtualserver.name"
            }
            id_component {
              id_component          = "server"
              referenced_field_name = "server.name"
            }
          }
        }
      }
      processor {
        description = "F5 DNS Profile upsert from profile.state metric"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-profile-u-profile.state"
        matcher     = "metric.key == \"com.dynatrace.extension.f5.bigip.gtm.profile.state\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.f5_dns_profile"
          node_type          = "F5_DNS_PROFILE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.f5:gtm:profile"
            }
            smartscape_field_extraction_entry {
              field_name            = "last_action"
              referenced_field_name = "profile.last_action"
            }
            smartscape_field_extraction_entry {
              field_name            = "express_enabled"
              referenced_field_name = "profile.express_enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "security_enabled"
              referenced_field_name = "profile.security_enabled"
            }
            smartscape_field_extraction_entry {
              field_name            = "cache_enabled"
              referenced_field_name = "profile.cache_enabled"
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
              referenced_field_name = "profile.name"
            }
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "profile.name"
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
        description = "F5 DNS Profile ID extraction on profile metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "f5-dns-profile-metrics"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.f5.bigip.gtm.profile.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.f5_dns_profile"
          node_type          = "F5_DNS_PROFILE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "profile.name"
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
