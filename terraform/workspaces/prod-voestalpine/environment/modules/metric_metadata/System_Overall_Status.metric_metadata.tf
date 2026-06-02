resource "dynatrace_metric_metadata" "System_Overall_Status" {
  description        = "The overall alarm status of the host. 0=Green 1=Gray 2=Yellow 3=Red"
  display_name       = "System Overall Status"
  metric_id          = "metric-vmware.host.overall.status"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
