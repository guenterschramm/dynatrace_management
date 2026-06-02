resource "dynatrace_metric_metadata" "Uptime_1" {
  description        = "How long the broker has been up for"
  display_name       = "Uptime"
  metric_id          = "metric-EMS2.BrokerUptime"
  source_entity_type = "tibco:broker"
  unit               = "Second"
}
