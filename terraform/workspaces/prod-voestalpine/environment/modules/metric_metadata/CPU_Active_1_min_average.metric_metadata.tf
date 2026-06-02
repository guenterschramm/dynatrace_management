resource "dynatrace_metric_metadata" "CPU_Active_1_min_average" {
  description        = "CPU Active (1 min average)"
  display_name       = "CPU Active (1 min average)"
  metric_id          = "metric-vmware.vm.rescpu.actav1.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
