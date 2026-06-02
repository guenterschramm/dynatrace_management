resource "dynatrace_metric_metadata" "Storage_write_count_rate" {
  display_name       = "Storage write count rate"
  metric_id          = "metric-EMS2.BrokerStorageWriteCountRate"
  source_entity_type = "tibco:broker"
  unit               = "PerSecond"
}
