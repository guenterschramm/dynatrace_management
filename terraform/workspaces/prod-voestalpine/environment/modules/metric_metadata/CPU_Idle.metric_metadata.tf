resource "dynatrace_metric_metadata" "CPU_Idle" {
  description        = "Total time that the CPU spent in an idle state"
  display_name       = "CPU Idle"
  metric_id          = "metric-vmware.host.cpu.idle.summation"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
