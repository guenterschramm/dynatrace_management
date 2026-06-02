resource "dynatrace_metric_metadata" "CPU_Co-stop" {
  description        = "Time the virtual machine is ready to run, but is unable to run due to co-scheduling constraints"
  display_name       = "CPU Co-stop"
  metric_id          = "metric-vmware.vm.cpu.costop.summation"
  source_entity_type = "vmware:virtualmachine"
  unit               = "MilliSecond"
}
