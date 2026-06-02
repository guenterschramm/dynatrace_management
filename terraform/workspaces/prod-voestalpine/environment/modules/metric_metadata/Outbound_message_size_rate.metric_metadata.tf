resource "dynatrace_metric_metadata" "Outbound_message_size_rate" {
  description        = "Rate of outbound messages by size"
  display_name       = "Outbound message size rate"
  metric_id          = "metric-EMS2.BrokerOutboundMsgSizeRate"
  source_entity_type = "tibco:broker"
  unit               = "KiloBytePerSecond"
}
