resource "dynatrace_metric_metadata" "CPU_Capacity_Usage_1" {
  description        = "CPU usage as a percent during the interval"
  display_name       = "CPU Capacity Usage"
  metric_id          = "metric-vmware.host.cpu.capacity.usage.average"
  source_entity_type = "vmware:host"
  unit               = "Percent"
}
