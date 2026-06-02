resource "dynatrace_metric_metadata" "Storage_read_count_rate" {
  display_name       = "Storage read count rate"
  metric_id          = "metric-EMS2.BrokerStorageReadCountRate"
  source_entity_type = "tibco:broker"
  unit               = "PerSecond"
}
