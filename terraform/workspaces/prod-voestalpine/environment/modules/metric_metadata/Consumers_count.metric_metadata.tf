resource "dynatrace_metric_metadata" "Consumers_count" {
  description        = "Number of consumers"
  display_name       = "Consumers count"
  metric_id          = "metric-EMS2.BrokerConsumerCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
