resource "dynatrace_metric_metadata" "Queue_Depth" {
  description        = "Number of messages pending in queue"
  display_name       = "Queue Depth"
  metric_id          = "metric-EMS2.QueueDepth"
  source_entity_type = "tibco:queue"
  unit               = "Count"
}
