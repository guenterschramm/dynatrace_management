resource "dynatrace_metric_metadata" "CPU_Idle_1" {
  description        = "Total time that the CPU spent in an idle state"
  display_name       = "CPU Idle"
  metric_id          = "metric-vmware.vm.cpu.idle.summation"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
