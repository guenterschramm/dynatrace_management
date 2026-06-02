resource "dynatrace_metric_metadata" "Queue_inbound_message_rate" {
  description        = "Rate of messages coming in to the queue"
  display_name       = "Queue inbound message rate"
  metric_id          = "metric-EMS2.QueueInboundMsgRate"
  source_entity_type = "tibco:queue"
  unit               = "PerSecond"
}
