resource "dynatrace_metric_metadata" "Instance_status" {
  description        = "Status of the broker instance"
  display_name       = "Instance status"
  metric_id          = "metric-EMS2.BrokerNodeStatus"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
