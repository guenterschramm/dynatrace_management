resource "dynatrace_openpipeline_v2_metrics_pipelines" "RabbitMQ" {
  custom_id    = "rabbitmq-metrics"
  display_name = "RabbitMQ"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.rabbitmq"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.0"
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Create entity for Cluster"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_CLUSTER_entity_Metrics_0"
        matcher     = "matchesValue(metric.key, \"rabbitmq.cluster.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_cluster"
          node_type          = "RABBITMQ_CLUSTER"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
          }
        }
      }
      processor {
        description = "Extract node for Cluster"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_CLUSTER_node_Metrics_1"
        matcher     = "matchesValue(metric.key, \"rabbitmq.cluster.messages\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.rabbitmq_cluster"
          node_type          = "RABBITMQ_CLUSTER"
          fields_to_extract {
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
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.rabbitmq:cluster"
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
              field_name            = "cluster"
              referenced_field_name = "cluster"
            }
            smartscape_field_extraction_entry {
              field_name            = "node"
              referenced_field_name = "node"
            }
            smartscape_field_extraction_entry {
              field_name            = "rabbitmq_version"
              referenced_field_name = "rabbitmq_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "erlang_version"
              referenced_field_name = "erlang_version"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "RABBITMQ_CLUSTER"
              source_field_name = "cluster"
            }
          }
        }
      }
      processor {
        description = "Create entity for Cluster"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_CLUSTER_entity_Metrics_2"
        matcher     = "matchesValue(metric.key, \"rabbitmq.queue.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_cluster"
          node_type          = "RABBITMQ_CLUSTER"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
          }
        }
      }
      processor {
        description = "Create entity for Cluster"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_CLUSTER_entity_Metrics_3"
        matcher     = "matchesValue(metric.key, \"rabbitmq.vhost.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_cluster"
          node_type          = "RABBITMQ_CLUSTER"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
          }
        }
      }
      processor {
        description = "Create entity for Cluster"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_CLUSTER_entity_Metrics_4"
        matcher     = "matchesValue(metric.key, \"rabbitmq.node.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_cluster"
          node_type          = "RABBITMQ_CLUSTER"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
          }
        }
      }
      processor {
        description = "Create entity for Node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_NODE_entity_Metrics_5"
        matcher     = "matchesValue(metric.key, \"rabbitmq.queue.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_node"
          node_type          = "RABBITMQ_NODE"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
          }
        }
      }
      processor {
        description = "Extract node for Node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_NODE_node_Metrics_6"
        matcher     = "matchesValue(metric.key, \"rabbitmq.node.mem_used\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.rabbitmq_node"
          node_type          = "RABBITMQ_NODE"
          fields_to_extract {
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
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.rabbitmq:node"
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
              field_name            = "cluster"
              referenced_field_name = "cluster"
            }
            smartscape_field_extraction_entry {
              field_name            = "node"
              referenced_field_name = "node"
            }
            smartscape_field_extraction_entry {
              field_name            = "rabbitmq_version"
              referenced_field_name = "rabbitmq_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "erlang_version"
              referenced_field_name = "erlang_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "host.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "ip"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "RABBITMQ_NODE"
              source_field_name = "node"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.rabbitmq_cluster"
              target_type          = "RABBITMQ_CLUSTER"
            }
          }
        }
      }
      processor {
        description = "Create entity for Node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_NODE_entity_Metrics_7"
        matcher     = "matchesValue(metric.key, \"rabbitmq.vhost.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_node"
          node_type          = "RABBITMQ_NODE"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
          }
        }
      }
      processor {
        description = "Create entity for Node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_NODE_entity_Metrics_8"
        matcher     = "matchesValue(metric.key, \"rabbitmq.node.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_node"
          node_type          = "RABBITMQ_NODE"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
          }
        }
      }
      processor {
        description = "Create entity for Virtual Host"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_VHOST_entity_Metrics_9"
        matcher     = "matchesValue(metric.key, \"rabbitmq.queue.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_vhost"
          node_type          = "RABBITMQ_VHOST"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "vhost"
              referenced_field_name = "vhost"
            }
          }
        }
      }
      processor {
        description = "Extract node for Virtual Host"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_VHOST_node_Metrics_10"
        matcher     = "matchesValue(metric.key, \"rabbitmq.vhost.messages\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.rabbitmq_vhost"
          node_type          = "RABBITMQ_VHOST"
          fields_to_extract {
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
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.rabbitmq:vhost"
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
              field_name            = "cluster"
              referenced_field_name = "cluster"
            }
            smartscape_field_extraction_entry {
              field_name            = "rabbitmq_version"
              referenced_field_name = "rabbitmq_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "erlang_version"
              referenced_field_name = "erlang_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "description"
              referenced_field_name = "description"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "vhost"
              referenced_field_name = "vhost"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "RABBITMQ_VHOST"
              source_field_name = "vhost"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.rabbitmq_cluster"
              target_type          = "RABBITMQ_CLUSTER"
            }
          }
        }
      }
      processor {
        description = "Create entity for Virtual Host"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_VHOST_entity_Metrics_11"
        matcher     = "matchesValue(metric.key, \"rabbitmq.vhost.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_vhost"
          node_type          = "RABBITMQ_VHOST"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "vhost"
              referenced_field_name = "vhost"
            }
          }
        }
      }
      processor {
        description = "Create entity for Queue"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_QUEUE_entity_Metrics_12"
        matcher     = "matchesValue(metric.key, \"rabbitmq.queue.*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.rabbitmq_queue"
          node_type          = "RABBITMQ_QUEUE"
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
            id_component {
              id_component          = "queue"
              referenced_field_name = "queue"
            }
          }
        }
      }
      processor {
        description = "Extract node for Queue"
        type        = "smartscapeNode"
        enabled     = true
        id          = "RABBITMQ_QUEUE_node_Metrics_13"
        matcher     = "matchesValue(metric.key, \"rabbitmq.queue.messages\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.rabbitmq_queue"
          node_type          = "RABBITMQ_QUEUE"
          fields_to_extract {
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
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.rabbitmq:queue"
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
              field_name            = "cluster"
              referenced_field_name = "cluster"
            }
            smartscape_field_extraction_entry {
              field_name            = "node"
              referenced_field_name = "node"
            }
            smartscape_field_extraction_entry {
              field_name            = "rabbitmq_version"
              referenced_field_name = "rabbitmq_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "erlang_version"
              referenced_field_name = "erlang_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "vhost"
              referenced_field_name = "vhost"
            }
            smartscape_field_extraction_entry {
              field_name            = "durable"
              referenced_field_name = "durable"
            }
            smartscape_field_extraction_entry {
              field_name            = "policy"
              referenced_field_name = "policy"
            }
            smartscape_field_extraction_entry {
              field_name            = "queue_state"
              referenced_field_name = "state"
            }
            smartscape_field_extraction_entry {
              field_name            = "queue_type"
              referenced_field_name = "type"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cluster"
              referenced_field_name = "cluster"
            }
            id_component {
              id_component          = "node"
              referenced_field_name = "node"
            }
            id_component {
              id_component          = "queue"
              referenced_field_name = "queue"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "RABBITMQ_QUEUE"
              source_field_name = "queue"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.rabbitmq_node"
              target_type          = "RABBITMQ_NODE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.rabbitmq_vhost"
              target_type          = "RABBITMQ_VHOST"
            }
          }
        }
      }
    }
  }
}
