resource "dynatrace_metric_metadata" "Topics_count" {
  description        = "Number of topics"
  display_name       = "Topics count"
  metric_id          = "metric-EMS2.BrokerTopicCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
