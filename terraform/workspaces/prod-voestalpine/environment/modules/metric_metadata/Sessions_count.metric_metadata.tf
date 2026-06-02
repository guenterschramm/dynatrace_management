resource "dynatrace_metric_metadata" "Sessions_count" {
  description        = "Number of sessions"
  display_name       = "Sessions count"
  metric_id          = "metric-EMS2.BrokerSessionCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
