resource "dynatrace_metric_metadata" "Uptime_2" {
  description        = "Time since the Erlang VM started, in milliseconds."
  display_name       = "Uptime"
  metric_id          = "metric-rabbitmq.node.uptime"
  source_entity_type = "rabbitmq:node"
  tags               = [ "com.dynatrace.rabbitmq", "rabbitmq.queue" ]
  unit               = "MilliSecond"
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
