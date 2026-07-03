resource "dynatrace_metric_metadata" "CPU_Usage_3" {
  description        = "CPU usage as a percentage during the interval"
  display_name       = "CPU Usage"
  metric_id          = "metric-vmware.vm.cpu.usage.average"
  source_entity_type = "vmware:virtualmachine"
  unit               = "Percent"
}
