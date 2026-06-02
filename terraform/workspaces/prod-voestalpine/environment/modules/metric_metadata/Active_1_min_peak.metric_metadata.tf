resource "dynatrace_metric_metadata" "Active_1_min_peak" {
  description        = "CPU active peak over 1 minute"
  display_name       = "Active (1 min peak)"
  metric_id          = "metric-vmware.vm.rescpu.actpk1.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
