resource "dynatrace_openpipeline_v2_metrics_pipelines" "Tibco_EMS" {
  custom_id    = "extension.tibcoems-metrics"
  display_name = "Tibco EMS"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.tibcoems"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "2.0.2"
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Extract node for Tibco EMS Broker"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_BROKER_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"EMS2.BrokerNodeStatus\") AND isNotNull(dt.smartscape.host) AND isNotNull(instance)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.tibco_broker"
          node_type          = "TIBCO_BROKER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.tibco:broker"
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
              field_name            = "server"
              referenced_field_name = "instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "version"
              referenced_field_name = "version"
            }
            smartscape_field_extraction_entry {
              field_name            = "statistics"
              referenced_field_name = "statistics"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "TIBCO_BROKER"
              source_field_name = "instance.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.host"
              target_type          = "HOST"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "same_as"
              target_id_field_name = "dt.smartscape.process"
              target_type          = "PROCESS"
            }
          }
        }
      }
      processor {
        description = "Create entity for Tibco EMS Broker"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_BROKER_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"EMS2.*\") AND isNotNull(dt.smartscape.host) AND isNotNull(instance)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.tibco_broker"
          node_type          = "TIBCO_BROKER"
          id_components {
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
        }
      }
      processor {
        description = "Create entity for Tibco EMS Queue"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_QUEUE_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"EMS2.Queue*\") AND isNotNull(queue) AND isNotNull(dt.smartscape.host) AND isNotNull(instance)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.tibco_queue"
          node_type          = "TIBCO_QUEUE"
          id_components {
            id_component {
              id_component          = "queue"
              referenced_field_name = "queue"
            }
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
        }
      }
      processor {
        description = "Extract node for Tibco EMS Queue"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_QUEUE_metrics_extraction"
        matcher     =<<-EOT
          (matchesValue(metric.key, "EMS2.QueueDepth") OR matchesValue(metric.key, "EMS2.QueueInboundMsgRate")) AND isNotNull(queue) AND isNotNull(dt.smartscape.host) AND isNotNull(instance)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.tibco_queue"
          node_type          = "TIBCO_QUEUE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.tibco:queue"
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
              field_name            = "server"
              referenced_field_name = "server"
            }
            smartscape_field_extraction_entry {
              field_name            = "host"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "queue"
              referenced_field_name = "queue"
            }
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "TIBCO_QUEUE"
              source_field_name = "queue"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.tibco_broker"
              target_type          = "TIBCO_BROKER"
            }
          }
        }
      }
      processor {
        description = "Create entity for Tibco EMS Topic"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_TOPIC_metrics_enrichment"
        matcher     =<<-EOT
          (matchesValue(metric.key, "EMS2.Topic*") OR matchesValue(metric.key, "EMS2.Durable*")) AND isNotNull(queue) AND isNotNull(dt.smartscape.host) AND isNotNull(instance)
        EOT
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.tibco_topic"
          node_type          = "TIBCO_TOPIC"
          id_components {
            id_component {
              id_component          = "topic"
              referenced_field_name = "topic"
            }
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
        }
      }
      processor {
        description = "Extract node for Tibco EMS Topic"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_TOPIC_metrics_extraction"
        matcher     =<<-EOT
          (matchesValue(metric.key, "EMS2.TopicMsgDepth") OR matchesValue(metric.key, "EMS2.DurablePendingMessages") OR matchesValue(metric.key, "EMS2.TopicOutboundMsgRate")) AND isNotNull(queue) AND isNotNull(dt.smartscape.host) AND isNotNull(instance)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.tibco_topic"
          node_type          = "TIBCO_TOPIC"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.tibco:topic"
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
              field_name            = "server"
              referenced_field_name = "server"
            }
            smartscape_field_extraction_entry {
              field_name            = "host"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "topic"
              referenced_field_name = "topic"
            }
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "TIBCO_TOPIC"
              source_field_name = "topic"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.tibco_broker"
              target_type          = "TIBCO_BROKER"
            }
          }
        }
      }
      processor {
        description = "Create entity for Tibco EMS Durable"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_DURABLE_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"EMS2.Durable*\") AND isNotNull(dt.smartscape.host) AND isNotNull(instance) AND isNotNull(topic) AND isNotNull(durable)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.tibco_durable"
          node_type          = "TIBCO_DURABLE"
          id_components {
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
            id_component {
              id_component          = "topic"
              referenced_field_name = "topic"
            }
            id_component {
              id_component          = "durable"
              referenced_field_name = "durable"
            }
          }
        }
      }
      processor {
        description = "Extract node for Tibco EMS Durable"
        type        = "smartscapeNode"
        enabled     = true
        id          = "TIBCO_DURABLE_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"EMS2.DurablePendingMessages\") AND isNotNull(dt.smartscape.host) AND isNotNull(instance) AND isNotNull(topic) AND isNotNull(durable)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.tibco_durable"
          node_type          = "TIBCO_DURABLE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.tibco:durable"
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
              field_name            = "server"
              referenced_field_name = "instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "user"
              referenced_field_name = "user"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "dt.smartscape.host"
              referenced_field_name = "dt.smartscape.host"
            }
            id_component {
              id_component          = "instance"
              referenced_field_name = "instance"
            }
            id_component {
              id_component          = "topic"
              referenced_field_name = "topic"
            }
            id_component {
              id_component          = "durable"
              referenced_field_name = "durable"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "TIBCO_DURABLE"
              source_field_name = "durable"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.tibco_topic"
              target_type          = "TIBCO_TOPIC"
            }
          }
        }
      }
    }
  }
}
