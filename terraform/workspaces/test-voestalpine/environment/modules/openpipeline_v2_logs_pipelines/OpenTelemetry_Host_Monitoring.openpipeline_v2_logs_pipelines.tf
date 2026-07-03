resource "dynatrace_openpipeline_v2_logs_pipelines" "OpenTelemetry_Host_Monitoring" {
  custom_id    = "extension.opentelemetry-logs"
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
        description = "Create entity for Host"
        type        = "smartscapeNode"
        enabled     = true
        id          = "OTEL_HOST_logs_enrichment"
        matcher     = "isNotNull(host.id) and isNotNull(host.name) and matchesValue(dt.openpipeline.source, \"/api/v2/otlp/v1/logs\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.otel_host"
          node_type          = "OTEL_HOST"
          id_components {
            id_component {
              id_component          = "host.id"
              referenced_field_name = "host.id"
            }
          }
        }
      }
      processor {
        description = "Create entity for Process"
        type        = "smartscapeNode"
        enabled     = true
        id          = "OTEL_PROCESS_logs_enrichment"
        matcher     = "isNotNull(host.id) and isNotNull(host.name) and isNotNull(process.executable.name) and matchesValue(dt.openpipeline.source, \"/api/v2/otlp/v1/logs\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.otel_process"
          node_type          = "OTEL_PROCESS"
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
        }
      }
    }
  }
}
