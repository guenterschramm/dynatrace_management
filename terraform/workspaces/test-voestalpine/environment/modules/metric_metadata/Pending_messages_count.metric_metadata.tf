resource "dynatrace_metric_metadata" "Pending_messages_count" {
  description        = "Number of pending messages"
  display_name       = "Pending messages count"
  metric_id          = "metric-EMS2.BrokerPendingMsgCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
