resource "dynatrace_metric_metadata" "CPU_Wait" {
  description        = "Total CPU time spent in wait state"
  display_name       = "CPU Wait"
  metric_id          = "metric-vmware.host.cpu.wait.summation"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
