resource "dynatrace_metric_metadata" "Messages_Virtual_Host" {
  description        = "Sum of ready and unacknowledged messages for all queues in the Virtual Host."
  display_name       = "Messages (Virtual Host)"
  metric_id          = "metric-rabbitmq.vhost.messages"
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
