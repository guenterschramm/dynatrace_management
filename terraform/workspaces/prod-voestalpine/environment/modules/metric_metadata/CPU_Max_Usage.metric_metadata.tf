resource "dynatrace_metric_metadata" "CPU_Max_Usage" {
  description        = "Current upper-bound on CPU usage"
  display_name       = "CPU Max Usage"
  metric_id          = "metric-vmware.vm.cpu.max_usage"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MegaHertz"
}
