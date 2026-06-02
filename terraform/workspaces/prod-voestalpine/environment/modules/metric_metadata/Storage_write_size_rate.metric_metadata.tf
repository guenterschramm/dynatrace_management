resource "dynatrace_metric_metadata" "Storage_write_size_rate" {
  display_name       = "Storage write size rate"
  metric_id          = "metric-EMS2.BrokerStorageWriteSizeRate"
  source_entity_type = "tibco:broker"
  unit               = "KiloBytePerSecond"
}
