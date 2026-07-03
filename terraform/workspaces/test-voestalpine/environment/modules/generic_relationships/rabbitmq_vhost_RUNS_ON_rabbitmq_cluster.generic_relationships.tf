resource "dynatrace_generic_relationships" "rabbitmq_vhost_RUNS_ON_rabbitmq_cluster" {
  enabled          = true
  created_by       = "com.dynatrace.rabbitmq 3.0.0"
  from_type        = "rabbitmq:vhost"
  to_type          = "rabbitmq:cluster"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(rabbitmq.vhost.)"
      source_type = "Metrics"
    }
  }
}
