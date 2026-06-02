resource "dynatrace_metric_metadata" "Inbound_message_count_rate" {
  description        = "Rate of inbound messages"
  display_name       = "Inbound message count rate"
  metric_id          = "metric-EMS2.BrokerInboundMsgCountRate"
  source_entity_type = "tibco:broker"
  unit               = "PerSecond"
}
