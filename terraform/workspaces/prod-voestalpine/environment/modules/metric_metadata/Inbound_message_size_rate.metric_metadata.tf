resource "dynatrace_metric_metadata" "Inbound_message_size_rate" {
  description        = "Rate of inbound messages by size"
  display_name       = "Inbound message size rate"
  metric_id          = "metric-EMS2.BrokerInboundMsgSizeRate"
  source_entity_type = "tibco:broker"
  unit               = "KiloBytePerSecond"
}
