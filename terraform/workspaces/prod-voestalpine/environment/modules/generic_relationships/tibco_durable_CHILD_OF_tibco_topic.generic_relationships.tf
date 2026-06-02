resource "dynatrace_generic_relationships" "tibco_durable_CHILD_OF_tibco_topic" {
  enabled          = true
  created_by       = "com.dynatrace.extension.tibcoems 1.4.9"
  from_type        = "tibco:durable"
  to_type          = "tibco:topic"
  type_of_relation = "CHILD_OF"
  sources {
    source {
      condition   = "$prefix(EMS2.Durable)"
      source_type = "Metrics"
    }
  }
}
