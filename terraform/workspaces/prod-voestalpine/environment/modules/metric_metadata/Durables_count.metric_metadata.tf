resource "dynatrace_metric_metadata" "Durables_count" {
  description        = "Number of durables"
  display_name       = "Durables count"
  metric_id          = "metric-EMS2.BrokerDurableCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
