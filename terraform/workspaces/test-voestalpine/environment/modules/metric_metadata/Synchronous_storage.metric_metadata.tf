resource "dynatrace_metric_metadata" "Synchronous_storage" {
  display_name       = "Synchronous storage"
  metric_id          = "metric-EMS2.BrokerSynchronousStorage"
  source_entity_type = "tibco:broker"
  unit               = "KiloByte"
}
