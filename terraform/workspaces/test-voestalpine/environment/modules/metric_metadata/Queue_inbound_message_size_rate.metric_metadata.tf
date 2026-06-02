resource "dynatrace_metric_metadata" "Queue_inbound_message_size_rate" {
  description        = "Rate of messages coming in to the queue by their size"
  display_name       = "Queue inbound message size rate"
  metric_id          = "metric-EMS2.QueueInboundMsgSizeRate"
  source_entity_type = "tibco:queue"
  unit               = "KiloBytePerSecond"
}
