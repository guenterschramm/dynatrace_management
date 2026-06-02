resource "dynatrace_metric_metadata" "File_descriptors_available" {
  description        = "File descriptors available"
  display_name       = "File descriptors available"
  metric_id          = "metric-rabbitmq.node.fd_total"
  source_entity_type = "rabbitmq:node"
  tags               = [ "com.dynatrace.rabbitmq", "rabbitmq.queue" ]
  unit               = "Count"
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
