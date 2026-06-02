resource "dynatrace_metric_metadata" "CPU_Running_1_min_average" {
  description        = "CPU Running (1 min average)"
  display_name       = "CPU Running (1 min average)"
  metric_id          = "metric-vmware.vm.rescpu.runav1.latest"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
