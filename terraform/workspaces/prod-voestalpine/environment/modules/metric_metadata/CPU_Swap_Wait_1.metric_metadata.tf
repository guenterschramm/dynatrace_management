resource "dynatrace_metric_metadata" "CPU_Swap_Wait_1" {
  description        = "CPU time spent waiting for swap-in"
  display_name       = "CPU Swap Wait"
  metric_id          = "metric-vmware.host.cpu.swapwait.summation"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
