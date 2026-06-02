resource "dynatrace_metric_metadata" "CPU_Wait_1" {
  description        = "Total CPU time spent in wait state"
  display_name       = "CPU Wait"
  metric_id          = "metric-vmware.vm.cpu.wait.summation"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
