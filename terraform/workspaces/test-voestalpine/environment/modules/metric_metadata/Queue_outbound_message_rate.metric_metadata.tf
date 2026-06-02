resource "dynatrace_metric_metadata" "Queue_outbound_message_rate" {
  description        = "Rate of messages removed from the queue"
  display_name       = "Queue outbound message rate"
  metric_id          = "metric-EMS2.QueueOutboundMsgRate"
  source_entity_type = "tibco:queue"
  unit               = "PerSecond"
}
