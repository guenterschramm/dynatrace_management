resource "dynatrace_metric_metadata" "Topic_inbound_message_rate" {
  description        = "Rate of messages coming in to the topic"
  display_name       = "Topic inbound message rate"
  metric_id          = "metric-EMS2.TopicInboundMsgRate"
  source_entity_type = "tibco:topic"
  unit               = "PerSecond"
}
