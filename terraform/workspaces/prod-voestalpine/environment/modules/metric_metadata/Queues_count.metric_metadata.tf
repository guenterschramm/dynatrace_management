resource "dynatrace_metric_metadata" "Queues_count" {
  description        = "Number of queues"
  display_name       = "Queues count"
  metric_id          = "metric-EMS2.BrokerQueueCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
