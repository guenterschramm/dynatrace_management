resource "dynatrace_metric_metadata" "Memory" {
  description        = "Bytes of memory allocated by the runtime for the queue, including stack, heap and internal structures."
  display_name       = "Memory"
  metric_id          = "metric-rabbitmq.queue.memory"
  source_entity_type = "rabbitmq:queue"
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
      display_name = "RabbitMQ Version"
      key          = "rabbitmq_version"
    }
    dimension {
      display_name = "Erlang Version"
      key          = "erlang_version"
    }
    dimension {
      display_name = "Virtual Host"
      key          = "vhost"
    }
    dimension {
      display_name = "Queue"
      key          = "queue"
    }
    dimension {
      display_name = "Durable"
      key          = "durable"
    }
    dimension {
      display_name = "Policy"
      key          = "policy"
    }
    dimension {
      display_name = "State"
      key          = "queue_state"
    }
    dimension {
      display_name = "Type"
      key          = "type"
    }
  }
}
