resource "dynatrace_metric_metadata" "Memory_usage_in_KB" {
  display_name       = "Memory usage in KB"
  metric_id          = "metric-EMS2.BrokerMemoryUsageKB"
  source_entity_type = "tibco:broker"
  unit               = "KiloByte"
}
