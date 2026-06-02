resource "dynatrace_metric_metadata" "Memory_usage" {
  display_name       = "Memory usage"
  metric_id          = "metric-EMS2.BrokerMemoryUsage"
  source_entity_type = "tibco:broker"
  unit               = "Percent"
}
