resource "dynatrace_metric_metadata" "Producers_count" {
  description        = "Number of producers"
  display_name       = "Producers count"
  metric_id          = "metric-EMS2.BrokerProducerCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
