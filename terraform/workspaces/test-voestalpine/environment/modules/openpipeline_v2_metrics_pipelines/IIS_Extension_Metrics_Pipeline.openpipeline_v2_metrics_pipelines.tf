resource "dynatrace_openpipeline_v2_metrics_pipelines" "IIS_Extension_Metrics_Pipeline" {
  custom_id    = "extension.wmi.iis-metrics"
  display_name = "IIS Extension Metrics Pipeline"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.wmi.iis"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.1"
    }
  }
  processing {
    processors {
      processor {
        description = "Add troubleshooting metadata for IIS metrics smartscape node field extraction"
        type        = "dql"
        enabled     = true
        id          = "iis-add-metadata"
        matcher     = "matchesValue(metric.key, \"iis*\")"
        dql {
          script =<<-EOT
            fieldsAdd instance_name=concat("IIS Service on ", if(device.name != "localhost", device.name, else: host.name)), troubleshooting.upsert_source=concat("extension:wmi.iis|", metric.key), vendor="Microsoft"
          EOT
        }
      }
    }
  }
  smartscape_edge_extraction {
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Extract node for IIS Service (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SERVICE_INSTANCE_u_node_oneagent"
        matcher     = "matchesValue(metric.key, \"iis.current.connections.gauge\") AND isNotNull(dt.smartscape.host)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_service_instance"
          node_type          = "IIS_SERVICE_INSTANCE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_SERVICE_INSTANCE"
              source_field_name = "instance_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS Service (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SERVICE_INSTANCE_Metrics_oneagent"
        matcher     = "matchesValue(metric.key, \"iis*\") AND isNotNull(dt.smartscape.host)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_service_instance"
          node_type          = "IIS_SERVICE_INSTANCE"
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
          }
        }
      }
      processor {
        description = "Extract node for IIS Service (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SERVICE_INSTANCE_u_node_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis.current.connections.gauge") AND device.name != "localhost"
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_service_instance"
          node_type          = "IIS_SERVICE_INSTANCE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_SERVICE_INSTANCE"
              source_field_name = "instance_name"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS Service (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SERVICE_INSTANCE_metrics_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis*") AND device.name != "localhost"
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_service_instance"
          node_type          = "IIS_SERVICE_INSTANCE"
          id_components {
            id_component {
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for IIS App Pool (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_APP_POOL_u_node_local"
        matcher     = "matchesValue(metric.key, \"iis.current.applicationPool.state\") AND isNotNull(dt.smartscape.host) AND isNotNull(iis_app_pool)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_app_pool"
          node_type          = "IIS_APP_POOL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              field_name            = "AppPoolState"
              referenced_field_name = "app_pool_state"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "iis_app_pool"
              referenced_field_name = "iis_app_pool"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_APP_POOL"
              source_field_name = "iis_app_pool"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.iis_service_instance"
              target_type          = "IIS_SERVICE_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS App Pool (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_APP_POOL_entity_metrics_local"
        matcher     = "matchesValue(metric.key, \"iis*\") AND isNotNull(dt.smartscape.host) AND isNotNull(iis_app_pool)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_app_pool"
          node_type          = "IIS_APP_POOL"
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "iis_app_pool"
              referenced_field_name = "iis_app_pool"
            }
          }
        }
      }
      processor {
        description = "Extract node for IIS App Pool (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_APP_POOL_u_node_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis.current.applicationPool.state") AND device.name != "localhost" AND isNotNull(iis_app_pool)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_app_pool"
          node_type          = "IIS_APP_POOL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              field_name            = "AppPoolState"
              referenced_field_name = "app_pool_state"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "iis_app_pool"
              referenced_field_name = "iis_app_pool"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_SERVICE_APP_POOL"
              source_field_name = "iis_app_pool"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.iis_service_instance"
              target_type          = "IIS_SERVICE_INSTANCE"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS App Pool (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_APP_POOL_entity_metrics_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis*") AND device.name != "localhost" AND isNotNull(iis_app_pool)
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_app_pool"
          node_type          = "IIS_APP_POOL"
          id_components {
            id_component {
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "iis_app_pool"
              referenced_field_name = "iis_app_pool"
            }
          }
        }
      }
      processor {
        description = "Extract node for IIS Site (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SITE_u_node_local"
        matcher     = "matchesValue(metric.key, \"iis.method.requests.persec\") AND isNotNull(dt.smartscape.host) AND isNotNull(iis_site)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_site"
          node_type          = "IIS_SITE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              field_name            = "SiteHost"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "iis_site"
              referenced_field_name = "iis_site"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_SITE"
              source_field_name = "iis_site"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.iis_service_instance"
              target_type          = "IIS_SERVICE_INSTANCE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS Site (local)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SITE_entity_metrics_local"
        matcher     = "matchesValue(metric.key, \"iis*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_site"
          node_type          = "IIS_SITE"
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "iis_site"
              referenced_field_name = "iis_site"
            }
          }
        }
      }
      processor {
        description = "Extract node for IIS Site (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SITE_u_node_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis.method.requests.persec")  AND device.name != "localhost" AND isNotNull(iis_site)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.iis_site"
          node_type          = "IIS_SITE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.wmi:iis_service_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
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
              field_name            = "SiteHost"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "iis_site"
              referenced_field_name = "iis_site"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "IIS_SITE"
              source_field_name = "iis_site"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.iis_service_instance"
              target_type          = "IIS_SERVICE_INSTANCE"
            }
          }
        }
      }
      processor {
        description = "Create entity for IIS Site (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "IIS_SITE_entity_metrics_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "iis*") AND device.name != "localhost" AND isNotNull(iis_site)
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.iis_site"
          node_type          = "IIS_SITE"
          id_components {
            id_component {
              id_component          = "device_name"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "iis_site"
              referenced_field_name = "iis_site"
            }
          }
        }
      }
    }
  }
}
