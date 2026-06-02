resource "dynatrace_metric_metadata" "Queue_outbound_total_messages" {
  description        = "Total number of outbound messages"
  display_name       = "Queue outbound total messages"
  metric_id          = "metric-EMS2.QueueOutboundMsgTotal.count"
  source_entity_type = "tibco:queue"
  unit               = "Count"
}
