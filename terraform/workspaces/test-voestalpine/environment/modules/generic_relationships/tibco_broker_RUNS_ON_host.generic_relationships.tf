resource "dynatrace_generic_relationships" "tibco_broker_RUNS_ON_host" {
  enabled          = true
  created_by       = "com.dynatrace.extension.tibcoems 2.0.2"
  from_type        = "tibco:broker"
  to_type          = "host"
  type_of_relation = "RUNS_ON"
  sources {
    source {
      condition   = "$prefix(EMS2.BrokerNodeStatus)"
      source_type = "Metrics"
    }
  }
}
