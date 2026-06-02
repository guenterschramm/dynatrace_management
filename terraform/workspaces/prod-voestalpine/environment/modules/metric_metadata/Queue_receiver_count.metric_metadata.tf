resource "dynatrace_metric_metadata" "Queue_receiver_count" {
  description        = "Number of receivers"
  display_name       = "Queue receiver count"
  metric_id          = "metric-EMS2.QueueReceivers"
  source_entity_type = "tibco:queue"
  unit               = "Count"
}
