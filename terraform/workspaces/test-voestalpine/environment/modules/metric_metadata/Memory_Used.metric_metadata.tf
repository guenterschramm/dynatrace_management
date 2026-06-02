resource "dynatrace_metric_metadata" "Memory_Used" {
  description        = "Memory used in bytes."
  display_name       = "Memory Used"
  metric_id          = "metric-rabbitmq.node.mem_used"
  source_entity_type = "rabbitmq:node"
  tags               = [ "com.dynatrace.rabbitmq", "rabbitmq.queue" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "Cluster"
      key          = "cluster"
    }
    dimension {
      display_name = "Node"
      key          = "node"
    }
    dimension {
      display_name = "Type"
      key          = "type"
    }
    dimension {
      display_name = "Running"
      key          = "running"
    }
    dimension {
      display_name = "Processors"
      key          = "processors"
    }
  }
}
