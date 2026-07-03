resource "dynatrace_openpipeline_v2_metrics_pipelines" "SSL_Certificate_Monitor_Pipeline" {
  custom_id    = "extension:python-certificate-monitor"
  display_name = "SSL Certificate Monitor Pipeline"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.custom.python-certificate-monitor"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.0"
    }
  }
  processing {
    processors {
      processor {
        description = "Reshaping of certificate.monitor.status fields for smartscape node extraction"
        type        = "dql"
        enabled     = true
        id          = "reshape-certificate-monitor-attributes"
        matcher     = "metric.key == \"certificate.monitor.status\""
        dql {
          script =<<-EOT
            fieldsAdd certificate.monitor.name=if(isNotNull(host.name), concat("Certificate Monitor on ", host.name), else: concat("ActiveGate certificate monitor - ", monitoring_config)), certificate.node.name=concat(subject_common_name, " on ", port), subject_alternative_names=concat(if(isNotNull(subject_alt_name_1), subject_alt_name_1, else: ""), if(isNotNull(subject_alt_name_2), concat(", ", subject_alt_name_2)), if(isNotNull(subject_alt_name_3), concat(", ", subject_alt_name_3)), if(isNotNull(subject_alt_name_4), concat(", ", subject_alt_name_4)), if(isNotNull(subject_alt_name_5), concat(", ", subject_alt_name_5)), if(isNotNull(subject_alt_name_6), concat(", ", subject_alt_name_6)), if(isNotNull(subject_alt_name_7), concat(", ", subject_alt_name_7)), if(isNotNull(subject_alt_name_8), concat(", ", subject_alt_name_8)), if(isNotNull(subject_alt_name_9), concat(", ", subject_alt_name_9)), if(isNotNull(subject_alt_name_10), concat(", ", subject_alt_name_10)), if(isNotNull(subject_alt_name_11), concat(", ", subject_alt_name_11)))
          EOT
        }
      }
    }
  }
  smartscape_edge_extraction {
    processors {
      processor {
        description = "Create belongs_to relationship from CERTIFICATE to CERTIFICATE_MONITOR"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "CERTIFICATE_belongs_to_CERTIFICATE_MONITOR"
        matcher     = "matchesValue(metric.key, \"certificate.monitor.status\")"
        smartscape_edge {
          edge_type            = "belongs_to"
          source_id_field_name = "dt.smartscape.certificate"
          source_type          = "CERTIFICATE"
          target_id_field_name = "dt.smartscape.certificate_monitor"
          target_type          = "CERTIFICATE_MONITOR"
        }
      }
      processor {
        description = "Create calls relationship from CERTIFICATE to PROCESS"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "CERTIFICATE_calls_PROCESS"
        matcher     = "matchesValue(metric.key, \"certificate.monitor.status\")"
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "dt.smartscape.certificate"
          source_type          = "CERTIFICATE"
          target_id_field_name = "dt.smartscape.process"
          target_type          = "PROCESS"
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Extract node for Certificate monitor (OneAgent)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_u_node_oneagent"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "OneAgent")
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
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
              default_value     = "CERTIFICATE_MONITOR"
              source_field_name = "certificate.monitor.name"
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
        description = "Create entity for Certificate monitor (OneAgent)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_metrics_oneagent"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "OneAgent")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate monitor (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_u_node_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "Domain")
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE_MONITOR"
              source_field_name = "certificate.monitor.name"
            }
          }
        }
      }
      processor {
        description = "Create entity for Certificate monitor (remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_metrics_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "Domain")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          id_components {
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate monitor (External)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_u_node_external"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "External")
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE_MONITOR"
              source_field_name = "certificate.monitor.name"
            }
          }
        }
      }
      processor {
        description = "Create entity for Certificate monitor (External)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_MONITOR_metrics_external"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND matchesValue(source, "External")
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate_monitor"
          node_type          = "CERTIFICATE_MONITOR"
          id_components {
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate (OneAgent)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_u_node_oneagent"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(port) AND isNotNull(validity_not_after) AND matchesValue(source, "OneAgent") 
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = "source"
              referenced_field_name = "source"
            }
            smartscape_field_extraction_entry {
              field_name            = "file_name"
              referenced_field_name = "file_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            smartscape_field_extraction_entry {
              field_name            = "cert_store"
              referenced_field_name = "cert_store"
            }
            smartscape_field_extraction_entry {
              field_name            = "serial_number"
              referenced_field_name = "sn"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_alternative_names"
              referenced_field_name = "subject_alternative_names"
            }
            smartscape_field_extraction_entry {
              field_name            = "tls"
              referenced_field_name = "tls"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_address"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_common_name"
              referenced_field_name = "issuer_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_country"
              referenced_field_name = "issuer_country"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_organization"
              referenced_field_name = "issuer_organization_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_lifecycle"
              referenced_field_name = "certificate_lifecycle"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_stage"
              referenced_field_name = "certificate_stage"
            }
            smartscape_field_extraction_entry {
              field_name            = "host_port"
              referenced_field_name = "host_port"
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
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "port"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE"
              source_field_name = "certificate.node.name"
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
        description = "Create entity for Certificate (OneAgent)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_entity_metrics_oneagent"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(port) AND isNotNull(validity_not_after) AND matchesValue(source, "OneAgent") 
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          id_components {
            id_component {
              id_component          = "dt_smartscape_host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "port"
              referenced_field_name = "port"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate (WCS)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_u_node_wcs"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(sn) AND isNotNull(cert_store) AND matchesValue(source, "WCS") 
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = "source"
              referenced_field_name = "source"
            }
            smartscape_field_extraction_entry {
              field_name            = "file_name"
              referenced_field_name = "file_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            smartscape_field_extraction_entry {
              field_name            = "cert_store"
              referenced_field_name = "cert_store"
            }
            smartscape_field_extraction_entry {
              field_name            = "serial_number"
              referenced_field_name = "sn"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_alternative_names"
              referenced_field_name = "subject_alternative_names"
            }
            smartscape_field_extraction_entry {
              field_name            = "tls"
              referenced_field_name = "tls"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_address"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_common_name"
              referenced_field_name = "issuer_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_country"
              referenced_field_name = "issuer_country"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_organization"
              referenced_field_name = "issuer_organization_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_lifecycle"
              referenced_field_name = "certificate_lifecycle"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_stage"
              referenced_field_name = "certificate_stage"
            }
            smartscape_field_extraction_entry {
              field_name            = "host_port"
              referenced_field_name = "host_port"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "serial_number"
              referenced_field_name = "sn"
            }
            id_component {
              id_component          = "cert_store"
              referenced_field_name = "cert_store"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE"
              source_field_name = "certificate.node.name"
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
        description = "Create entity for Certificate (WCS)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_entity_metrics_wcs"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(sn) AND isNotNull(cert_store) AND matchesValue(source, "WCS") 
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "serial_number"
              referenced_field_name = "sn"
            }
            id_component {
              id_component          = "cert_store"
              referenced_field_name = "cert_store"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate (Remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_u_node_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(host_port) AND isNotNull(validity_not_after) AND isNotNull(monitoring_config) AND matchesValue(source, "Domain") 
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = "source"
              referenced_field_name = "source"
            }
            smartscape_field_extraction_entry {
              field_name            = "file_name"
              referenced_field_name = "file_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            smartscape_field_extraction_entry {
              field_name            = "cert_store"
              referenced_field_name = "cert_store"
            }
            smartscape_field_extraction_entry {
              field_name            = "serial_number"
              referenced_field_name = "sn"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_alternative_names"
              referenced_field_name = "subject_alternative_names"
            }
            smartscape_field_extraction_entry {
              field_name            = "tls"
              referenced_field_name = "tls"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_address"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_common_name"
              referenced_field_name = "issuer_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_country"
              referenced_field_name = "issuer_country"
            }
            smartscape_field_extraction_entry {
              field_name            = "issuer_organization"
              referenced_field_name = "issuer_organization_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_lifecycle"
              referenced_field_name = "certificate_lifecycle"
            }
            smartscape_field_extraction_entry {
              field_name            = "certificate_stage"
              referenced_field_name = "certificate_stage"
            }
            smartscape_field_extraction_entry {
              field_name            = "host_port"
              referenced_field_name = "host_port"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "host_port"
              referenced_field_name = "host_port"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE"
              source_field_name = "certificate.node.name"
            }
          }
        }
      }
      processor {
        description = "Create entity for Certificate (Remote)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_entity_metrics_remote"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(host_port) AND isNotNull(validity_not_after) AND isNotNull(monitoring_config) AND matchesValue(source, "Domain") 
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "host_port"
              referenced_field_name = "host_port"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
        }
      }
      processor {
        description = "Extract node for Certificate (External)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_u_node_external"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(file_name) AND isNotNull(validity_not_after) AND isNotNull(monitoring_config) AND matchesValue(source, "External") 
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          fields_to_extract {
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
              field_name            = "host_att"
              referenced_field_name = "dt.smartscape.host"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
            smartscape_field_extraction_entry {
              field_name            = "source"
              referenced_field_name = "source"
            }
            smartscape_field_extraction_entry {
              field_name            = "file_name"
              referenced_field_name = "file_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "port"
              referenced_field_name = "port"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            smartscape_field_extraction_entry {
              field_name            = "cert_store"
              referenced_field_name = "cert_store"
            }
            smartscape_field_extraction_entry {
              field_name            = "serial_number"
              referenced_field_name = "sn"
            }
            smartscape_field_extraction_entry {
              field_name            = "subject_alternative_names"
              referenced_field_name = "subject_alternative_names"
            }
            smartscape_field_extraction_entry {
              field_name            = "tls"
              referenced_field_name = "tls"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "file_name"
              referenced_field_name = "file_name"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CERTIFICATE"
              source_field_name = "certificate.node.name"
            }
          }
        }
      }
      processor {
        description = "Create entity for Certificate (External)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "CERTIFICATE_entity_metrics_external"
        matcher     =<<-EOT
          matchesValue(metric.key, "certificate.monitor.status") AND isNotNull(subject_common_name) AND isNotNull(file_name) AND isNotNull(validity_not_after) AND isNotNull(monitoring_config) AND matchesValue(source, "External") 
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.certificate"
          node_type          = "CERTIFICATE"
          id_components {
            id_component {
              id_component          = "subject_common_name"
              referenced_field_name = "subject_common_name"
            }
            id_component {
              id_component          = "file_name"
              referenced_field_name = "file_name"
            }
            id_component {
              id_component          = "validity_not_after"
              referenced_field_name = "validity_not_after"
            }
            id_component {
              id_component          = "monitoring_config"
              referenced_field_name = "monitoring_config"
            }
          }
        }
      }
    }
  }
}
