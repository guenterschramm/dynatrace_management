resource "dynatrace_metric_metadata" "Host_Availability" {
  description        = "100% if Connected and Powered On, else 0%"
  display_name       = "Host Availability"
  metric_id          = "metric-vmware.host.availability"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
