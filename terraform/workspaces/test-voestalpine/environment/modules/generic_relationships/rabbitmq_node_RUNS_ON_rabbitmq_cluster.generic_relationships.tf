resource "dynatrace_generic_relationships" "rabbitmq_node_RUNS_ON_rabbitmq_cluster" {
  enabled          = true
  created_by       = "com.dynatrace.rabbitmq 3.0.0"
  from_type        = "rabbitmq:node"
  to_type          = "rabbitmq:cluster"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(rabbitmq.node.)"
      source_type = "Metrics"
    }
  }
}
