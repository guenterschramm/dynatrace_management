resource "dynatrace_metric_metadata" "Topic_message_Size" {
  description        = "Size of the messages pending in topic"
  display_name       = "Topic message Size"
  metric_id          = "metric-EMS2.TopicMsgSize"
  source_entity_type = "tibco:topic"
  unit               = "KiloByte"
}
