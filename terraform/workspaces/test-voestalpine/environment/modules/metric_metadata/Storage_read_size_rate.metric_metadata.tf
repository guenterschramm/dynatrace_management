resource "dynatrace_metric_metadata" "Storage_read_size_rate" {
  display_name       = "Storage read size rate"
  metric_id          = "metric-EMS2.BrokerStorageReadSizeRate"
  source_entity_type = "tibco:broker"
  unit               = "KiloBytePerSecond"
}
