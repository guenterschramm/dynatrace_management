resource "dynatrace_metric_metadata" "Queue_outbound_message_size_rate" {
  description        = "Rate of messages removed from the queue by their size"
  display_name       = "Queue outbound message size rate"
  metric_id          = "metric-EMS2.QueueOutboundMsgSizeRate"
  source_entity_type = "tibco:queue"
  unit               = "KiloBytePerSecond"
}
