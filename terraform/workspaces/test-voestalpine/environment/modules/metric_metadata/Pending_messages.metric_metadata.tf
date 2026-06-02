resource "dynatrace_metric_metadata" "Pending_messages" {
  description        = "Number of messages pending for this durable"
  display_name       = "Pending messages"
  metric_id          = "metric-EMS2.DurablePendingMessages"
  source_entity_type = "tibco:durable"
  unit               = "Count"
}
