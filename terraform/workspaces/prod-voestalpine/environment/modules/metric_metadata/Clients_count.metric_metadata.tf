resource "dynatrace_metric_metadata" "Clients_count" {
  description        = "Number of clients"
  display_name       = "Clients count"
  metric_id          = "metric-EMS2.BrokerClientCount"
  source_entity_type = "tibco:broker"
  unit               = "Count"
}
