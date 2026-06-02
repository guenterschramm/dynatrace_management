resource "dynatrace_metric_metadata" "CPU_Capacity_Usage" {
  description        = "CPU usage as a percent during the interval"
  display_name       = "CPU Capacity Usage"
  metric_id          = "metric-vmware.vm.cpu.capacity.usage.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
