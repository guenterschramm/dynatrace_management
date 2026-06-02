resource "dynatrace_metric_metadata" "Memory_pooled" {
  display_name       = "Memory pooled"
  metric_id          = "metric-EMS2.BrokerMemoryPooled"
  source_entity_type = "tibco:broker"
  unit               = "KiloByte"
}
