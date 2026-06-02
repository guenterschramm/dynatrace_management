resource "dynatrace_metric_metadata" "Outbound_message_count_rate" {
  description        = "Rate of outbound messages"
  display_name       = "Outbound message count rate"
  metric_id          = "metric-EMS2.BrokerOutboundMsgCountRate"
  source_entity_type = "tibco:broker"
  unit               = "PerSecond"
}
