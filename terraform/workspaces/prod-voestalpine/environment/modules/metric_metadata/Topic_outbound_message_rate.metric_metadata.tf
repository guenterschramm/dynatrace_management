resource "dynatrace_metric_metadata" "Topic_outbound_message_rate" {
  description        = "Rate of messages removed from the topic"
  display_name       = "Topic outbound message rate"
  metric_id          = "metric-EMS2.TopicOutboundMsgRate"
  source_entity_type = "tibco:topic"
  unit               = "PerSecond"
}
