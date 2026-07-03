resource "dynatrace_generic_relationships" "rabbitmq_queue_RUNS_ON_rabbitmq_node" {
  enabled          = true
  created_by       = "com.dynatrace.rabbitmq 3.0.0"
  from_type        = "rabbitmq:queue"
  to_type          = "rabbitmq:node"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(rabbitmq.queue.)"
      source_type = "Metrics"
    }
  }
}
