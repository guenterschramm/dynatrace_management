resource "dynatrace_openpipeline_v2_metrics_pipelines" "OpenTelemetry_Host_Monitoring" {
  custom_id    = "extension.opentelemetry-metrics"
  display_name = "OpenTelemetry Host Monitoring"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.opentelemetry"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.3"
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Extract node for Host"
        type        = "smartscapeNode"
        enabled     = true
        id          = "OTEL_HOST_host_metrics_extraction"
        matcher     =<<-EOT
          matchesValue(metric.key, {"system.*", "process.*"}) AND isNotNull(host.id)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.otel_host"
          node_type          = "OTEL_HOST"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.otel:host"
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
              field_name            = "os.type"
              referenced_field_name = "os.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.name"
              referenced_field_name = "os.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.version"
              referenced_field_name = "os.version"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.description"
              referenced_field_name = "os.description"
            }
            smartscape_field_extraction_entry {
              field_name            = "os.build.id"
              referenced_field_name = "os.build.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.id"
              referenced_field_name = "host.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.arch"
              referenced_field_name = "host.arch"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.cpu.model.name"
              referenced_field_name = "host.cpu.model.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.ip"
              referenced_field_name = "host.ip"
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
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "host.id"
              referenced_field_name = "host.id"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "OTEL_HOST"
              source_field_name = "host.name"
            }
          }
        }
      }
      processor {
        description = "Extract node for Process"
        type        = "smartscapeNode"
        enabled     = true
        id          = "OTEL_PROCESS_process_extraction"
        matcher     = "matchesValue(metric.key, \"process.*\") AND isNotNull(process.executable.name) AND isNotNull(host.id)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.otel_process"
          node_type          = "OTEL_PROCESS"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.otel:process"
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
              field_name            = "process.command_line"
              referenced_field_name = "process.command_line"
            }
            smartscape_field_extraction_entry {
              field_name            = "process.pid"
              referenced_field_name = "process.pid"
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
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "host.id"
              referenced_field_name = "host.id"
            }
            id_component {
              id_component          = "process.executable.name"
              referenced_field_name = "process.executable.name"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "OTEL_PROCESS"
              source_field_name = "process.executable.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.otel_host"
              target_type          = "OTEL_HOST"
            }
          }
        }
      }
    }
  }
}
