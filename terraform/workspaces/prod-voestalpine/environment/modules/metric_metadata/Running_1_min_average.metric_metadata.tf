resource "dynatrace_metric_metadata" "Running_1_min_average" {
  description        = "CPU running average over 1 minute"
  display_name       = "Running (1 min average)"
  metric_id          = "metric-vmware.host.rescpu.runav1.latest"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
