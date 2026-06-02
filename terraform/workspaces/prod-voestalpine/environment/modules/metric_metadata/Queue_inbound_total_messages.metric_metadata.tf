resource "dynatrace_metric_metadata" "Queue_inbound_total_messages" {
  description        = "Total number of incoming messages"
  display_name       = "Queue inbound total messages"
  metric_id          = "metric-EMS2.QueueInboundMsgTotal.count"
  source_entity_type = "tibco:queue"
  unit               = "Count"
}
