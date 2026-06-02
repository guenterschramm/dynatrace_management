resource "dynatrace_metric_metadata" "Active_1_min_peak_1" {
  description        = "CPU active peak over 1 minute"
  display_name       = "Active (1 min peak)"
  metric_id          = "metric-vmware.host.rescpu.actpk1.latest"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
