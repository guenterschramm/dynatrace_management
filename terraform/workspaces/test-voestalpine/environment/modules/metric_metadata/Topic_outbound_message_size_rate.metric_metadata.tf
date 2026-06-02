resource "dynatrace_metric_metadata" "Topic_outbound_message_size_rate" {
  description        = "Rate of messages removed from the topic by size"
  display_name       = "Topic outbound message size rate"
  metric_id          = "metric-EMS2.TopicOutboundMsgSizeRate"
  source_entity_type = "tibco:topic"
  unit               = "KiloBytePerSecond"
}
