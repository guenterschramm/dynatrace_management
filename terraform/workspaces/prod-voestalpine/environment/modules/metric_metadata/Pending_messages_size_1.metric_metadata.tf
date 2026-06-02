resource "dynatrace_metric_metadata" "Pending_messages_size_1" {
  description        = "Size of all pending messages"
  display_name       = "Pending messages size"
  metric_id          = "metric-EMS2.BrokerPendingMsgSize"
  source_entity_type = "tibco:broker"
  unit               = "KiloByte"
}
