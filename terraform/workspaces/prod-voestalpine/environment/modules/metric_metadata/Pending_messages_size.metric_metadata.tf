resource "dynatrace_metric_metadata" "Pending_messages_size" {
  description        = "Total size of the messages pending for this durable"
  display_name       = "Pending messages size"
  metric_id          = "metric-EMS2.DurablePendingSize"
  source_entity_type = "tibco:durable"
  unit               = "KiloByte"
}
