resource "dynatrace_metric_metadata" "Running_1_min_peak" {
  description        = "CPU running peak over 1 minute"
  display_name       = "Running (1 min peak)"
  metric_id          = "metric-vmware.vm.rescpu.runpk1.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
