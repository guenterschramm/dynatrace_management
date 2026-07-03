resource "dynatrace_generic_relationships" "rabbitmq_queue_CHILD_OF_rabbitmq_vhost" {
  enabled          = true
  created_by       = "com.dynatrace.rabbitmq 3.0.0"
  from_type        = "rabbitmq:queue"
  to_type          = "rabbitmq:vhost"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(rabbitmq.queue.)"
      source_type = "Metrics"
    }
  }
}
