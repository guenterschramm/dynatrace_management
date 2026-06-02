resource "dynatrace_metric_metadata" "Queue_pending_message_size" {
  description        = "Size of messages pending in queue"
  display_name       = "Queue pending message size"
  metric_id          = "metric-EMS2.QueueMsgSize"
  source_entity_type = "tibco:queue"
  unit               = "KiloByte"
}
