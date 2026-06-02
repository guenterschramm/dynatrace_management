resource "dynatrace_metric_metadata" "Running_1_min_peak_1" {
  description        = "CPU running average over 1 minute"
  display_name       = "Running (1 min peak)"
  metric_id          = "metric-vmware.host.rescpu.runpk1.latest"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
