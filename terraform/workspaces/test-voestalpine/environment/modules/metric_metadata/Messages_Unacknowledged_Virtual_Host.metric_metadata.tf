resource "dynatrace_metric_metadata" "Messages_Unacknowledged_Virtual_Host" {
  description        = "Number of messages delivered to clients but not yet acknowledged for all queues in the Virtual Host."
  display_name       = "Messages Unacknowledged (Virtual Host)"
  metric_id          = "metric-rabbitmq.vhost.messages_unacknowledged"
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
