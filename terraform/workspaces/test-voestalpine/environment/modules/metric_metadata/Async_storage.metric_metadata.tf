resource "dynatrace_metric_metadata" "Async_storage" {
  display_name       = "Async storage"
  metric_id          = "metric-EMS2.BrokerAsyncStorage"
  source_entity_type = "tibco:broker"
  unit               = "KiloByte"
}
