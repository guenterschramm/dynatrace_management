resource "dynatrace_metric_metadata" "CPU_Ready_1" {
  description        = "Time that the virtual machine was ready, but could not get scheduled to run on the physical CPU during last measurement interval"
  display_name       = "CPU Ready"
  metric_id          = "metric-vmware.host.cpu.ready.summation"
  source_entity_type = "vmware:host"
  unit               = "MilliSecond"
}
