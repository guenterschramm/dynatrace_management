resource "dynatrace_metric_metadata" "Messages_Acknowledged_Cluster" {
  description        = "Total messages acknowledged in the cluster"
  display_name       = "Messages Acknowledged (Cluster)"
  metric_id          = "metric-rabbitmq.cluster.ack.count"
  source_entity_type = "rabbitmq:cluster"
  tags               = [ "com.dynatrace.rabbitmq" ]
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
      display_name = "RabbitMQ Version"
      key          = "rabbitmq_version"
    }
    dimension {
      display_name = "Erlang Version"
      key          = "erlang_version"
    }
  }
}
