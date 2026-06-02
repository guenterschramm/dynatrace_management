resource "dynatrace_metric_metadata" "CPU_Demand" {
  description        = "The amount of CPU resources a virtual machine would use if there were no CPU contention or CPU limit"
  display_name       = "CPU Demand"
  metric_id          = "metric-vmware.vm.cpu.demand.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Unspecified"
}
