resource "dynatrace_metric_metadata" "Topic_message_depth" {
  description        = "Number of messages pending in topic"
  display_name       = "Topic message depth"
  metric_id          = "metric-EMS2.TopicMsgDepth"
  source_entity_type = "tibco:topic"
  unit               = "Count"
}
