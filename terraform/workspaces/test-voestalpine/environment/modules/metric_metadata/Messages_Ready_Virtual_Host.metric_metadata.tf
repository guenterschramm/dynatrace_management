resource "dynatrace_metric_metadata" "Messages_Ready_Virtual_Host" {
  description        = "Number of messages ready to be delivered to clients for all queues in the Virtual Host."
  display_name       = "Messages Ready (Virtual Host)"
  metric_id          = "metric-rabbitmq.vhost.messages_ready"
  source_entity_type = "rabbitmq:vhost"
  tags               = [ "com.dynatrace.rabbitmq", "rabbitmq.queue" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Cluster"
      key          = "cluster"
    }
    dimension {
      display_name = "Virtual Host"
      key          = "vhost"
    }
    dimension {
      display_name = "Description"
      key          = "description"
    }
  }
}
