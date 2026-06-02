resource "dynatrace_metric_metadata" "CPU_Swap_Wait" {
  description        = "CPU time spent waiting for swap-in"
  display_name       = "CPU Swap Wait"
  metric_id          = "metric-vmware.vm.cpu.swapwait.summation"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
