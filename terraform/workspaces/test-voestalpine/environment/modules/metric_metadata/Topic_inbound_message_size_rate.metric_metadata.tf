resource "dynatrace_metric_metadata" "Topic_inbound_message_size_rate" {
  description        = "Rate of messages coming in to the topic by size"
  display_name       = "Topic inbound message size rate"
  metric_id          = "metric-EMS2.TopicInboundMsgSizeRate"
  source_entity_type = "tibco:topic"
  unit               = "KiloBytePerSecond"
}
