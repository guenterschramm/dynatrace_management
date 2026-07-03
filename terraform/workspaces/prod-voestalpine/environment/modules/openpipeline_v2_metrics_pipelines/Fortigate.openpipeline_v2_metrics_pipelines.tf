resource "dynatrace_openpipeline_v2_metrics_pipelines" "Fortigate" {
  custom_id    = "extension.fortigate-metrics"
  display_name = "Fortigate"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.fortigate"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.2"
    }
  }
  processing {
    processors {
      processor {
        description = "Reshaping of fields on cpu usage metric for smartscape node field extraction"
        type        = "dql"
        enabled     = true
        id          = "reshape-cpu-usage-attributes"
        matcher     = "metric.key == \"com.dynatrace.extension.network_device.cpu_usage\""
        dql {
          script =<<-EOT
            fieldsAdd troubleshooting.upsert_source="extension:fortigate|metric:cpu_usage", vendor="Fortigate"
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
          script = "fieldsAdd troubleshooting.upsert_source=\"extension:fortigate|metric:if.status\""
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Create entity for FortiGate Tunnel"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_TUNNEL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"fortigate.tunnel*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.fortinet_fortigate_tunnel"
          node_type          = "FORTINET_FORTIGATE_TUNNEL"
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
            id_component {
              id_component          = "tunnel"
              referenced_field_name = "tunnel"
            }
          }
        }
      }
      processor {
        description = "Extract node for FortiGate Tunnel"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_TUNNEL_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"fortigate.tunnel.bytes.in.count\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.fortinet_fortigate_tunnel"
          node_type          = "FORTINET_FORTIGATE_TUNNEL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.fortinet:fortigate_tunnel"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
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
              field_name            = "url"
              referenced_field_name = "url"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "tunnel"
              referenced_field_name = "tunnel"
            }
            smartscape_field_extraction_entry {
              field_name            = "vdom"
              referenced_field_name = "vdom"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
            id_component {
              id_component          = "tunnel"
              referenced_field_name = "tunnel"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "FORTINET_FORTIGATE_TUNNEL"
              source_field_name = "tunnel"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.fortinet_fortigate_vdom"
              target_type          = "FORTINET_FORTIGATE_VDOM"
            }
          }
        }
      }
      processor {
        description = "Create entity for FortiGate Tunnel Proxy"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_TUNNEL_PROXY_metrics_enrichment"
        matcher     = "metric.key == \"fortigate.tunnel.proxy.*\""
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.fortinet_fortigate_tunnel_proxy"
          node_type          = "FORTINET_FORTIGATE_TUNNEL_PROXY"
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
            id_component {
              id_component          = "tunnel"
              referenced_field_name = "tunnel"
            }
            id_component {
              id_component          = "proxy"
              referenced_field_name = "proxy"
            }
          }
        }
      }
      processor {
        description = "Extract node for FortiGate Tunnel Proxy"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_TUNNEL_PROXY_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"fortigate.tunnel.proxy.status\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.fortinet_fortigate_tunnel_proxy"
          node_type          = "FORTINET_FORTIGATE_TUNNEL_PROXY"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.fortinet:fortigate_tunnel_proxy"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
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
              field_name            = "url"
              referenced_field_name = "url"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "tunnel"
              referenced_field_name = "tunnel"
            }
            smartscape_field_extraction_entry {
              field_name            = "proxy"
              referenced_field_name = "proxy"
            }
            smartscape_field_extraction_entry {
              field_name            = "status"
              referenced_field_name = "status"
            }
            smartscape_field_extraction_entry {
              field_name            = "vdom"
              referenced_field_name = "vdom"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
            id_component {
              id_component          = "tunnel"
              referenced_field_name = "tunnel"
            }
            id_component {
              id_component          = "proxy"
              referenced_field_name = "proxy"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "FORTINET_FORTIGATE_TUNNEL_PROXY"
              source_field_name = "proxy"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.fortinet_fortigate_tunnel"
              target_type          = "FORTINET_FORTIGATE_TUNNEL"
            }
          }
        }
      }
      processor {
        description = "Create entity for FortiGate VDOM"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_VDOM_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"fortigate*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.fortinet_fortigate_vdom"
          node_type          = "FORTINET_FORTIGATE_VDOM"
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
          }
        }
      }
      processor {
        description = "Extract node for FortiGate VDOM"
        type        = "smartscapeNode"
        enabled     = true
        id          = "FORTINET_FORTIGATE_VDOM_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"fortigate.connectivity\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.fortinet_fortigate_vdom"
          node_type          = "FORTINET_FORTIGATE_VDOM"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.fortinet:fortigate_vdom"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
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
              field_name            = "url"
              referenced_field_name = "url"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "vdom"
              referenced_field_name = "vdom"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "ip"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "vdom"
              referenced_field_name = "vdom"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "FORTINET_FORTIGATE_VDOM"
              source_field_name = "vdom"
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
        description = "Create entity for Network device"
        type        = "smartscapeNode"
        enabled     = true
        id          = "EXT_NETWORK_DEVICE_metrics_enrichment"
        matcher     = "isNotNull(device.address)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "device.address"
            }
          }
        }
      }
      processor {
        description = "Extract node for Network device"
        type        = "smartscapeNode"
        enabled     = true
        id          = "EXT_NETWORK_DEVICE_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.network_device.cpu_usage\")"
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
              field_name            = "lldp.chassis_id"
              referenced_field_name = "lldp.chassis.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
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
              field_name            = "url"
              referenced_field_name = "url"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "alias"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "device.address"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "FORTINET_FORTIGATE"
              source_field_name = "alias"
            }
          }
        }
      }
      processor {
        description = "Create entity for Network interface"
        type        = "smartscapeNode"
        enabled     = true
        id          = "EXT_NETWORK_INTERFACE_metrics_enrichment"
        matcher     = "isNotNull(device.address) AND isNotNull(if.name)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "name"
              referenced_field_name = "if.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Network interface"
        type        = "smartscapeNode"
        enabled     = true
        id          = "EXT_NETWORK_INTERFACE_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"com.dynatrace.extension.network_device.if.status\")"
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
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "lldp.chassis_id"
              referenced_field_name = "lldp.chassis.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
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
              field_name            = "ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "if.type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "opStatus"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "device.identifier"
              referenced_field_name = "device.address"
            }
            id_component {
              id_component          = "name"
              referenced_field_name = "if.name"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "FORTINET_FORTIGATE_INTERFACE"
              source_field_name = "if.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.fortinet_fortigate_vdom"
              target_type          = "FORTINET_FORTIGATE_VDOM"
            }
          }
        }
      }
    }
  }
}
