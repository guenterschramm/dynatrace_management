resource "dynatrace_metric_metadata" "Bytes_Received_Virtual_Host" {
  description        = "Total number of bytes received on the network for all queues in the Virtual Host."
  display_name       = "Bytes Received (Virtual Host)"
  metric_id          = "metric-rabbitmq.vhost.recv_oct.count"
  source_entity_type = "rabbitmq:vhost"
  tags               = [ "com.dynatrace.rabbitmq", "rabbitmq.queue" ]
  unit               = "Byte"
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
