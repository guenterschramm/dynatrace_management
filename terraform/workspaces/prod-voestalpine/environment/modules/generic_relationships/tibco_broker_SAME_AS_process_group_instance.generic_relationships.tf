resource "dynatrace_generic_relationships" "tibco_broker_SAME_AS_process_group_instance" {
  enabled          = true
  created_by       = "com.dynatrace.extension.tibcoems 1.4.9"
  from_type        = "tibco:broker"
  to_type          = "process_group_instance"
  type_of_relation = "SAME_AS"
  sources {
    source {
      condition   = "$prefix(EMS2.BrokerNodeStatus)"
      source_type = "Metrics"
    }
  }
}
